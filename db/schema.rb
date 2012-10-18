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

ActiveRecord::Schema.define(:version => 20121018125143) do

  create_table "food_stuffs", :force => true do |t|
    t.string   "name"
    t.integer  "protein"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "user_id"
    t.integer  "energy_kcal"
    t.integer  "energy_kj"
    t.integer  "fat"
    t.integer  "carbohydrates"
    t.integer  "fibers"
    t.integer  "salt"
    t.integer  "ash"
    t.integer  "water"
    t.integer  "alcohol"
    t.integer  "monosaccharides"
    t.integer  "disaccharides"
    t.integer  "sackaros"
    t.integer  "whole_grain_total"
    t.integer  "total_saturated_fatty_acids"
    t.integer  "fatty_acid_40_100"
    t.integer  "fatty_acid_120"
    t.integer  "fatty_acid_140"
    t.integer  "fatty_acid_160"
    t.integer  "fatty_acid_180"
    t.integer  "fatty_acid_200"
    t.integer  "total_monounsaturated_fatty_acids"
    t.integer  "fatty_acid_161"
    t.integer  "fatty_acid_181"
    t.integer  "total_polyunsaturated_fatty_acids"
    t.integer  "total_n6_fatty_acids"
    t.integer  "fatty_acid_182"
    t.integer  "fatty_acid_204"
    t.integer  "total_n3_fatty_acids"
    t.integer  "EPA_fatty_acid_205"
    t.integer  "DPA_fatty_acid_225"
    t.integer  "DHA_fatty_acid_226"
    t.integer  "total_trans_fatty_acids"
    t.integer  "cholesterol"
    t.integer  "retinol_equivalents"
    t.integer  "retinol"
    t.integer  "beta_carotene"
    t.integer  "vitamin_d"
    t.integer  "vitamin_e"
    t.integer  "vitamin_k"
    t.integer  "thiamine"
    t.integer  "riboflavin"
    t.integer  "vitamin_c"
    t.integer  "niacin"
    t.integer  "niacin_equivalents"
    t.integer  "vitamin_b6"
    t.integer  "vitamin_b12"
    t.integer  "folate"
    t.integer  "phosphorus"
    t.integer  "iodine"
    t.integer  "iron"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "protein"
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
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
