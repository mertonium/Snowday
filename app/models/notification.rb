class Notification < ActiveRecord::Base
  belongs_to :district
  validates_presence_of :message
  validates_length_of :message, :maximum => 140, :minimum => 5
  
  before_save :send_text
  
  private

    def send_text
      sms_user = APP_CONFIG['sms_user'] || 'foo'
      sms_password = APP_CONFIG['sms_password'] || 'secret'
      sender_phone = APP_CONFIG['sms_phone'] || '555-555-1212'
      oneapi = Smsified::OneAPI.new(:username => sms_user, :password => sms_password)
      oneapi.send_sms :address => ['3192172583','4155251254'], :message => 'You are hot <3', :sender_address => sender_phone
    end
end
