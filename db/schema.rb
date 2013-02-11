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

ActiveRecord::Schema.define(:version => 20130210221932) do

  create_table "admins", :force => true do |t|
    t.boolean  "early_invoice"
    t.string   "phoneNum1"
    t.string   "contact1"
    t.string   "phoneNum2"
    t.string   "contact2"
    t.integer  "school_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "hotels", :force => true do |t|
    t.integer  "twoRooms"
    t.integer  "fourRooms"
    t.integer  "school_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "judges", :force => true do |t|
    t.string   "jfirstName"
    t.string   "jlastName"
    t.string   "debate_exp"
    t.integer  "school_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reqs", :force => true do |t|
    t.integer  "school_id"
    t.text     "diet"
    t.text     "special"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schools", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "sName"
    t.string   "repfname"
    t.string   "replname"
    t.string   "sphoneNum"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "role_id"
  end

  add_index "schools", ["email"], :name => "index_schools_on_email", :unique => true
  add_index "schools", ["reset_password_token"], :name => "index_schools_on_reset_password_token", :unique => true

  create_table "teams", :force => true do |t|
    t.string   "teamName"
    t.string   "tfirstName1"
    t.string   "tlastName1"
    t.string   "tfirstName2"
    t.string   "tlastName2"
    t.string   "tseed"
    t.string   "texp"
    t.integer  "school_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "transpos", :force => true do |t|
    t.boolean  "fpickup"
    t.time     "fpickup_time"
    t.integer  "fpickup_number"
    t.boolean  "spickup"
    t.time     "spickup_time"
    t.integer  "spickup_number"
    t.boolean  "sdropoff"
    t.time     "sdropoff_time"
    t.integer  "sdropoff_number"
    t.integer  "school_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
