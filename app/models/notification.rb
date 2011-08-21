class Notification < ActiveRecord::Base
  belongs_to :district
  validates_presence_of :message
  validates_length_of :message, :maximum => 140
end
