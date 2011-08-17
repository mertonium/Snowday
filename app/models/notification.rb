class Notification < ActiveRecord::Base
  belongs_to :district
  validates_presence_of :message
end
