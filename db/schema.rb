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

ActiveRecord::Schema.define(:version => 20110817081614) do

  create_table "districts", :force => true do |t|
    t.column "name", :string
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

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

# Could not dump table "users" because of following ArgumentError
#   wrong number of arguments (4 for 5) ["/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/postgis_adapter-0.8.1/lib/postgis_adapter/common_spatial_adapter.rb:14:in `initialize'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/connection_adapters/sqlite_adapter.rb:193:in `new'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/connection_adapters/sqlite_adapter.rb:193:in `block in indexes'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/connection_adapters/sqlite_adapter.rb:192:in `map'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/connection_adapters/sqlite_adapter.rb:192:in `indexes'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/postgis_adapter-0.8.1/lib/postgis_adapter/common_spatial_adapter.rb:85:in `indexes'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/postgis_adapter-0.8.1/lib/postgis_adapter/common_spatial_adapter.rb:73:in `table'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/schema_dumper.rb:75:in `block in tables'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/schema_dumper.rb:66:in `each'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/schema_dumper.rb:66:in `tables'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/schema_dumper.rb:27:in `dump'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/schema_dumper.rb:21:in `dump'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/railties/databases.rake:327:in `block (4 levels) in <top (required)>'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/railties/databases.rake:326:in `open'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/railties/databases.rake:326:in `block (3 levels) in <top (required)>'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:205:in `call'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:205:in `block in execute'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:200:in `each'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:200:in `execute'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:158:in `block in invoke_with_call_chain'", "/Users/mertonium/.rvm/rubies/ruby-1.9.2-p180/lib/ruby/1.9.1/monitor.rb:201:in `mon_synchronize'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:151:in `invoke_with_call_chain'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:144:in `invoke'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/activerecord-3.0.9/lib/active_record/railties/databases.rake:143:in `block (2 levels) in <top (required)>'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:205:in `call'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:205:in `block in execute'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:200:in `each'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:200:in `execute'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:158:in `block in invoke_with_call_chain'", "/Users/mertonium/.rvm/rubies/ruby-1.9.2-p180/lib/ruby/1.9.1/monitor.rb:201:in `mon_synchronize'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:151:in `invoke_with_call_chain'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/task.rb:144:in `invoke'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/application.rb:112:in `invoke_task'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/application.rb:90:in `block (2 levels) in top_level'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/application.rb:90:in `each'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/application.rb:90:in `block in top_level'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/application.rb:129:in `standard_exception_handling'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/application.rb:84:in `top_level'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/application.rb:62:in `block in run'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/application.rb:129:in `standard_exception_handling'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/lib/rake/application.rb:59:in `run'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/gems/rake-0.9.2/bin/rake:32:in `<top (required)>'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/bin/rake:19:in `load'", "/Users/mertonium/.rvm/gems/ruby-1.9.2-p180/bin/rake:19:in `<main>'"]

end
