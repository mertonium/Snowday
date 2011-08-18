# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110818235046) do

  create_table "admins", :force => true do |t|
    t.column "email", :string, :default => "", :null => false
    t.column "encrypted_password", :string, :limit => 128, :default => "", :null => false
    t.column "remember_created_at", :datetime
    t.column "sign_in_count", :integer, :default => 0
    t.column "current_sign_in_at", :datetime
    t.column "last_sign_in_at", :datetime
    t.column "current_sign_in_ip", :string
    t.column "last_sign_in_ip", :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "districts", :force => true do |t|
    t.column "name", :string
    t.column "state", :string
    t.column "state_abbr", :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
    t.column "geom", :multi_polygon, :srid => 4269, :null => false
    t.column "admin_id", :integer
  end

  add_index "districts", ["geom"], :name => "index_districts_on_geom", :spatial=> true 

  create_table "districts_users", :id => false, :force => true do |t|
    t.column "district_id", :integer
    t.column "user_id", :integer
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  create_table "notifications", :force => true do |t|
    t.column "message", :string
    t.column "sent_at", :datetime
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
    t.column "district_id", :integer
  end

  create_table "users", :force => true do |t|
    t.column "email", :string, :default => "", :null => false
    t.column "encrypted_password", :string, :limit => 128, :default => "", :null => false
    t.column "reset_password_token", :string
    t.column "reset_password_sent_at", :datetime
    t.column "remember_created_at", :datetime
    t.column "sign_in_count", :integer, :default => 0
    t.column "current_sign_in_at", :datetime
    t.column "last_sign_in_at", :datetime
    t.column "current_sign_in_ip", :string
    t.column "last_sign_in_ip", :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
    t.column "phone", :string
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
