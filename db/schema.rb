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

ActiveRecord::Schema.define(:version => 20120428000231) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "agreements", :force => true do |t|
    t.string   "name"
    t.string   "ipp_agreement_guid"
    t.string   "contract_manager"
    t.boolean  "set_up_complete"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "obligation_rule_dependencies", :force => true do |t|
    t.integer  "obligation_rule_id"
    t.integer  "dependency"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "obligation_rules", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "repeat"
    t.string   "obligation_type"
    t.integer  "agreement_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "obligations", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "due_date"
    t.boolean  "met"
    t.date     "date_met"
    t.boolean  "monetary"
    t.decimal  "amount"
    t.string   "invoice_number"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "one_time_obligations", :force => true do |t|
    t.string   "name"
    t.integer  "obligation_rule_id"
    t.date     "due_date"
    t.boolean  "is_dependent"
    t.boolean  "monetary"
    t.decimal  "amount"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "reoccuring_obligations", :force => true do |t|
    t.string   "name"
    t.integer  "obligation_rule_id"
    t.integer  "frequency"
    t.string   "frequency_period"
    t.integer  "duration"
    t.string   "duration_period"
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "is_dependent"
    t.boolean  "monetary"
    t.decimal  "amount"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
