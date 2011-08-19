class District < ActiveRecord::Base
  has_many :notifications, :dependent => :destroy
  has_many :users
  has_one :admin
  validates_presence_of :name

  def display_name
    "#{name}, (#{state_abbr})"
  end
end
