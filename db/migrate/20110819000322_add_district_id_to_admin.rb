class AddDistrictIdToAdmin < ActiveRecord::Migration
  def self.up
    add_column :admins, :district_id, :integer
  end

  def self.down
    remove_column :admins, :district_id
  end
end
