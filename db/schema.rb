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

ActiveRecord::Schema.define(:version => 20150303124830) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "committees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "logo_name"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "committees_voivodships", :force => true do |t|
    t.integer  "committee_id"
    t.integer  "voivodship_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "committees_voivodships", ["committee_id"], :name => "index_voivodship_committees_on_committee_id"
  add_index "committees_voivodships", ["voivodship_id"], :name => "index_voivodship_committees_on_voivodship_id"

  create_table "electoral_districts", :force => true do |t|
    t.string   "name"
    t.integer  "valid_votes"
    t.integer  "voivodship_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "invalid_votes"
    t.integer  "number_of_voters"
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
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "sejmik_size"
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
