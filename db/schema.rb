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

ActiveRecord::Schema.define(:version => 20130404170916) do

  create_table "audit_thumbs_ups", :force => true do |t|
    t.integer  "audit_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "audits", :force => true do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes"
    t.integer  "version",         :default => 0
    t.string   "comment"
    t.string   "remote_address"
    t.datetime "created_at"
  end

  add_index "audits", ["associated_id", "associated_type"], :name => "associated_index"
  add_index "audits", ["auditable_id", "auditable_type"], :name => "auditable_index"
  add_index "audits", ["created_at"], :name => "index_audits_on_created_at"
  add_index "audits", ["user_id", "user_type"], :name => "user_index"

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
    t.string   "vendor"
    t.string   "expiration_date_unopened"
    t.string   "expiration_date_broached"
    t.string   "bar_code_number"
    t.float    "lactose"
    t.string   "retailers_field"
    t.string   "ingredients_field"
    t.text     "tags"
    t.text     "details"
    t.integer  "weight"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.integer  "food_stuff_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "retailers", :force => true do |t|
    t.string   "name"
    t.integer  "food_stuff_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "retailers", ["food_stuff_id"], :name => "index_retailers_on_food_stuff_id"

  create_table "tags", :force => true do |t|
    t.string   "en"
    t.string   "se"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.integer  "edit_points"
    t.integer  "progress_to_edit_point"
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
