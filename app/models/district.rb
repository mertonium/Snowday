class District < ActiveRecord::Base
  has_many :notifications, :dependent => :destroy
  validates_presence_of :name
end
