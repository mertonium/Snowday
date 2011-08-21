class User < ActiveRecord::Base
  has_many :subscriptions
  has_many :districts, :through => :subscriptions
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :phone, :email, :password, :password_confirmation, :remember_me
  
  # Non-devise stuff
  attr_accessor :district_list
  after_save :update_subscriptions
  
  private
    
    def update_subscriptions
      districts.delete_all
      logger.debug "****************************************"
      logger.debug district_list 
      selected_districts = district_list.nil? ? [] : district_list.keys.collect{ |id| District.find_by_id(id) }
     
      logger.debug selected_districts
      selected_districts.each { |district| self.districts << district }
    end
end
