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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160504102751) do

  create_table "answers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "user_ids"
    t.text     "question_ids"
    t.text     "survey_ids"
    t.text     "vas_values"
    t.text     "food_ids"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demographics", force: true do |t|
    t.boolean "eating_disorder"
    t.integer "age"
    t.string  "gender"
    t.boolean "raffle"
    t.integer "survey_id"
    t.string  "ethnicity_other"
    t.string  "height"
    t.string  "weight"
    t.text    "weight_management_practices"
    t.text    "medical_conditions"
    t.text    "medical_conditions_other"
    t.text    "weight_management_practices_other"
    t.integer "alcohol_consumption"
    t.integer "ethnicity"
    t.integer "work"
    t.integer "income"
  end

  create_table "food_ranks", force: true do |t|
    t.integer  "rank"
    t.integer  "user_id"
    t.integer  "food_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "row_order"
  end

  create_table "foods", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unit"
  end

  create_table "survey_categories", force: true do |t|
    t.integer  "survey_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_foods", force: true do |t|
    t.integer  "survey_id"
    t.integer  "food_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin_enabled"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vas_answers", force: true do |t|
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "survey_id"
  end

  create_table "vas_questions", force: true do |t|
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "prompt_left"
    t.text     "prompt_right"
  end

end
