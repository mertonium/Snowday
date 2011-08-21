class Subscription < ActiveRecord::Base
  belongs_to :district
  belongs_to :user
  attr_accessible :district_id, :user_id
end
