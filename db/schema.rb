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

ActiveRecord::Schema.define(:version => 20110815020208) do

  create_table "access_tokens", :force => true do |t|
    t.integer  "user_id",                          :null => false
    t.integer  "resource_server_id",               :null => false
    t.string   "access_token",       :limit => 40, :null => false
    t.string   "refresh_token",      :limit => 40, :null => false
    t.string   "uid",                :limit => 40, :null => false
    t.datetime "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "access_tokens", ["uid", "resource_server_id"], :name => "index_access_tokens_on_uid_and_resource_server_id", :unique => true
  add_index "access_tokens", ["user_id"], :name => "index_access_tokens_on_user_id", :unique => true

  create_table "resource_servers", :force => true do |t|
    t.string   "client_id",     :limit => 40,  :null => false
    t.string   "client_secret", :limit => 40,  :null => false
    t.string   "host",          :limit => 127, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resource_servers", ["host"], :name => "index_resource_servers_on_host", :unique => true

  create_table "users", :force => true do |t|
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "diaspora_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["diaspora_id"], :name => "index_users_on_diaspora_id", :unique => true

end
