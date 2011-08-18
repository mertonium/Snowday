class CreateDistricts < ActiveRecord::Migration
  def self.up
    create_table :districts do |t|
      t.string :name
      t.string :state
      t.string :state_abbr
      t.multi_polygon :geom, :srid => 4269, :null => false
      t.timestamps
    end

    add_index :districts, :geom, :spatial => true
  end

  def self.down
    drop_table :districts
  end
end
