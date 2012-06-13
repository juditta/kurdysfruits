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

ActiveRecord::Schema.define(:version => 20120612175900) do

  create_table "crops", :force => true do |t|
    t.date     "date"
    t.integer  "plot_id"
    t.float    "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "farms", :force => true do |t|
    t.string   "farm_name"
    t.string   "name"
    t.integer  "regon"
    t.integer  "nip"
    t.string   "street"
    t.integer  "post_code"
    t.string   "city"
    t.integer  "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leases", :force => true do |t|
    t.string   "name"
    t.integer  "phone"
    t.date     "lease_time"
    t.date     "lease_panding"
    t.float    "cost_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plants", :force => true do |t|
    t.integer  "type_id"
    t.string   "strain"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plantstypes", :force => true do |t|
    t.string   "plantstype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plots", :force => true do |t|
    t.string   "nr_dz_ew"
    t.integer  "season_id"
    t.integer  "farm_id"
    t.string   "aera"
    t.integer  "lease_id"
    t.integer  "plant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons", :force => true do |t|
    t.string   "season"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", :force => true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
