class ExtendedUsersController < Devise::RegistrationsController
  def get_all_districts
    @districts = District.find(:all, :select => District.column_names - ['geom'], :order => 'state_abbr', :limit => 50)
  end
  
  def create
    get_all_districts
    super
  end
  
  def edit
    get_all_districts
  end
  
  def update
    params[:district_list] ||= {}
#    logger.debug "district list = "
#    logger.debug params['district_list']
    get_all_districts
    super
  end
end