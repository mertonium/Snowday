class UsersDistricts < ActiveRecord::Migration
  def self.up
    create_table :districts_users, :id => false do |t|
      t.references :district
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :districts_users
  end
end
