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

ActiveRecord::Schema.define(:version => 20110621153622) do

  create_table "licenses", :force => true do |t|
    t.string   "name",       :limit => 300
    t.string   "url",        :limit => 500
    t.string   "icon",       :limit => 300
    t.boolean  "open"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", :force => true do |t|
    t.integer "user_id"
    t.integer "publisher_id"
  end

  add_index "memberships", ["publisher_id"], :name => "index_memberships_on_publisher_id"
  add_index "memberships", ["user_id"], :name => "index_memberships_on_user_id"

  create_table "publications", :force => true do |t|
    t.integer  "publisher_id"
    t.integer  "parent_id"
    t.string   "slug",         :limit => 100
    t.string   "type",         :limit => 48
    t.string   "name",         :limit => 300
    t.string   "author",       :limit => 300
    t.string   "art"
    t.string   "art_url"
    t.text     "description"
    t.integer  "position"
    t.integer  "license_id"
    t.boolean  "download",                    :default => true
    t.boolean  "hide",                        :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publications", ["license_id"], :name => "index_publications_on_license_id"
  add_index "publications", ["publisher_id"], :name => "index_publications_on_publisher_id"

  create_table "publishers", :force => true do |t|
    t.integer  "license_id"
    t.string   "name",                 :limit => 300
    t.string   "email",                :limit => 300
    t.string   "slug",                 :limit => 50
    t.string   "header"
    t.string   "header_url"
    t.string   "art"
    t.string   "art_url"
    t.string   "color_body",           :limit => 10
    t.string   "color_text",           :limit => 10
    t.string   "color_secondary_text", :limit => 10
    t.string   "color_links",          :limit => 10
    t.string   "color_background",     :limit => 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publishers", ["license_id"], :name => "index_publishers_on_license_id"

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.string   "rol",           :limit => 10
    t.integer  "login_count",                 :default => 0
    t.datetime "last_login_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
