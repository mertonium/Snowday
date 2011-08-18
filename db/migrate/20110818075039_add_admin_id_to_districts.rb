class AddAdminIdToDistricts < ActiveRecord::Migration
  def self.up
    add_column :districts, :admin_id, :integer
  end

  def self.down
    remove_column :districts, :admin_id
  end
end
