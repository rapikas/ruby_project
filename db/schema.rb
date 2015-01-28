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

ActiveRecord::Schema.define(:version => 20150127215425) do

  create_table "committees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "logo_name"
    t.string   "logo_filepath"
    t.string   "logo_fileurl"
  end

  create_table "committees_voivodships", :force => true do |t|
    t.integer  "committee_id"
    t.integer  "voivodship_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "committees_voivodships", ["committee_id"], :name => "index_voivodship_committees_on_committee_id"
  add_index "committees_voivodships", ["voivodship_id"], :name => "index_voivodship_committees_on_voivodship_id"

  create_table "electoral_districts", :force => true do |t|
    t.string   "name"
    t.integer  "valid_votes"
    t.integer  "voivodship_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "invalid_votes"
  end

  add_index "electoral_districts", ["voivodship_id"], :name => "index_electoral_districts_on_voivodship_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "surname"
    t.integer  "electoral_district_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "login"
    t.string   "password"
    t.string   "role"
  end

  add_index "users", ["electoral_district_id"], :name => "index_users_on_electoral_district_id"

  create_table "voivodships", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "votes", :force => true do |t|
    t.integer  "number_of_votes"
    t.integer  "electoral_district_id"
    t.integer  "committee_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "votes", ["committee_id"], :name => "index_votes_on_committee_id"
  add_index "votes", ["electoral_district_id"], :name => "index_votes_on_electoral_district_id"

end
