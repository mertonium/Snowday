class Notification < ActiveRecord::Base
  belongs_to :district
  validates_presence_of :message
  validates_length_of :message, :maximum => 140, :minimum => 5
  
  before_save :send_text
  
  private

    def send_text
      # Set the SMSified vars
      sms_user = APP_CONFIG['sms_user'] || 'foo'
      sms_password = APP_CONFIG['sms_password'] || 'secret'
      sender_phone = APP_CONFIG['sms_phone'] || '555-555-1212'
      
      # Array of phone numbers from subscribers
      receivers = [];
      
      # Get the subscribers to this district
      subscribers = self.district.users

      # Only text if there are subscribers
      if subscribers.count > 0 
        subscribers.each do |subscriber|
          receivers.push(subscriber.phone)
        end
        oneapi = Smsified::OneAPI.new(:username => sms_user, :password => sms_password)
        oneapi.send_sms :address => receivers, :message => message, :sender_address => sender_phone
      end
      
    end
end
