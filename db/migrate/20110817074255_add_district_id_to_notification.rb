class AddDistrictIdToNotification < ActiveRecord::Migration
  def self.up
    add_column :notifications, :district_id, :integer
  end

  def self.down
    remove_column :notifications, :district_id
  end
end
