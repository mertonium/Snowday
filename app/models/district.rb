class District < ActiveRecord::Base
  has_many :notifications, :dependent => :destroy
  has_and_belongs_to_many :users
  validates_presence_of :name
end
