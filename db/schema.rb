# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20140724034215) do

  create_table "accounts", :force => true do |t|
    t.string   "acc_no"
    t.string   "customer_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "postcode"
    t.string   "contact_name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "sites", :force => true do |t|
    t.integer  "account_id"
    t.string   "site_name",    :limit => 150
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city",         :limit => 50
    t.string   "postcode",     :limit => 15
    t.string   "contact_name", :limit => 100
    t.string   "telephone",    :limit => 20
    t.string   "email"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "sites", ["account_id"], :name => "index_sites_on_account_id"
  add_index "sites", ["city"], :name => "index_sites_on_city", :unique => true
  add_index "sites", ["contact_name"], :name => "index_sites_on_contact_name", :unique => true
  add_index "sites", ["email"], :name => "index_sites_on_email"
  add_index "sites", ["postcode"], :name => "index_sites_on_postcode", :unique => true
  add_index "sites", ["site_name"], :name => "index_sites_on_site_name", :unique => true

end
