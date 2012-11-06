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

ActiveRecord::Schema.define(:version => 20121029170630) do

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

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "food_stuff_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "comments", ["food_stuff_id"], :name => "index_comments_on_food_stuff_id"

  create_table "food_stuff_marks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "food_stuff_mark_image_file_name"
    t.string   "food_stuff_mark_image_content_type"
    t.integer  "food_stuff_mark_image_file_size"
    t.datetime "food_stuff_mark_image_updated_at"
  end

  create_table "food_stuffs", :force => true do |t|
    t.string   "name",                              :null => false
    t.float    "protein"
    t.float    "energy_kcal"
    t.float    "energy_kj"
    t.float    "fat"
    t.float    "carbohydrates"
    t.float    "fibers"
    t.float    "salt"
    t.float    "ash"
    t.float    "water"
    t.float    "alcohol"
    t.float    "monosaccharides"
    t.float    "disaccharides"
    t.float    "sackaros"
    t.float    "whole_grain_total"
    t.float    "total_saturated_fatty_acids"
    t.float    "fatty_acid_40_100"
    t.float    "fatty_acid_120"
    t.float    "fatty_acid_140"
    t.float    "fatty_acid_160"
    t.float    "fatty_acid_180"
    t.float    "fatty_acid_200"
    t.float    "total_monounsaturated_fatty_acids"
    t.float    "fatty_acid_161"
    t.float    "fatty_acid_181"
    t.float    "total_polyunsaturated_fatty_acids"
    t.float    "total_n6_fatty_acids"
    t.float    "fatty_acid_182"
    t.float    "fatty_acid_204"
    t.float    "total_n3_fatty_acids"
    t.float    "fatty_acid_183"
    t.float    "EPA_fatty_acid_205"
    t.float    "DPA_fatty_acid_225"
    t.float    "DHA_fatty_acid_226"
    t.float    "total_trans_fatty_acids"
    t.float    "cholesterol"
    t.float    "retinol_equivalents"
    t.float    "retinol"
    t.float    "beta_carotene"
    t.float    "vitamin_d"
    t.float    "vitamin_e"
    t.float    "vitamin_k"
    t.float    "thiamine"
    t.float    "riboflavin"
    t.float    "vitamin_c"
    t.float    "niacin"
    t.float    "niacin_equivalents"
    t.float    "vitamin_b6"
    t.float    "vitamin_b12"
    t.float    "folate"
    t.float    "phosphorus"
    t.float    "iodine"
    t.float    "iron"
    t.float    "calcium"
    t.float    "potassium"
    t.float    "magnesium"
    t.float    "sodium"
    t.float    "selenium"
    t.float    "zinc"
    t.float    "waste"
    t.integer  "user_id"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "food_stuff_image_file_name"
    t.string   "food_stuff_image_content_type"
    t.integer  "food_stuff_image_file_size"
    t.datetime "food_stuff_image_updated_at"
    t.text     "mark_names"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.integer  "food_stuff_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "votes", :force => true do |t|
    t.boolean  "vote",          :default => false, :null => false
    t.integer  "voteable_id",                      :null => false
    t.string   "voteable_type",                    :null => false
    t.integer  "voter_id"
    t.string   "voter_type"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "votes", ["voteable_id", "voteable_type"], :name => "index_votes_on_voteable_id_and_voteable_type"
  add_index "votes", ["voter_id", "voter_type", "voteable_id", "voteable_type"], :name => "fk_one_vote_per_user_per_entity", :unique => true
  add_index "votes", ["voter_id", "voter_type"], :name => "index_votes_on_voter_id_and_voter_type"

end
