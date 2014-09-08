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

ActiveRecord::Schema.define(:version => 20140908104721) do

  create_table "employee", :force => true do |t|
    t.string   "emp_id",          :null => false
    t.string   "first_name",      :null => false
    t.string   "last_name",       :null => false
    t.date     "date_of_birth"
    t.string   "email"
    t.string   "phone_number"
    t.string   "department"
    t.string   "designation"
    t.date     "date_of_joining"
    t.string   "pan_number"
    t.string   "pf_number"
    t.integer  "account_number"
    t.string   "bank"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "gender"
  end

  create_table "salary", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "basic"
    t.integer  "hra"
    t.integer  "conveyance"
    t.integer  "special_allowance"
    t.integer  "medical_allowance"
    t.integer  "food_allowance"
    t.integer  "pf_mgmt"
    t.integer  "pf"
    t.integer  "esi"
    t.integer  "professional_tax"
    t.integer  "tds"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "user", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.integer  "employee_id"
    t.boolean  "administrator"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
