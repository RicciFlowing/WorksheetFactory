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

ActiveRecord::Schema.define(version: 20160312100934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "factories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factory_skill_associations", force: :cascade do |t|
    t.integer  "factory_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "factory_skill_associations", ["factory_id"], name: "index_factory_skill_associations_on_factory_id", using: :btree
  add_index "factory_skill_associations", ["skill_id"], name: "index_factory_skill_associations_on_skill_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "grade"
    t.string   "year"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "groups", ["user_id"], name: "index_groups_on_user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.string   "solution"
    t.integer  "skill_id"
    t.integer  "factory_skill_association_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "questions", ["factory_skill_association_id"], name: "index_questions_on_factory_skill_association_id", using: :btree
  add_index "questions", ["skill_id"], name: "index_questions_on_skill_id", using: :btree

  create_table "results", force: :cascade do |t|
    t.integer  "positive"
    t.integer  "negative"
    t.integer  "question_id"
    t.integer  "worksheet_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "results", ["question_id"], name: "index_results_on_question_id", using: :btree
  add_index "results", ["worksheet_id"], name: "index_results_on_worksheet_id", using: :btree

  create_table "sectors", force: :cascade do |t|
    t.string   "title"
    t.string   "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "sector_id"
  end

  add_index "skills", ["category_id"], name: "index_skills_on_category_id", using: :btree
  add_index "skills", ["sector_id"], name: "index_skills_on_sector_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "worksheet_questions_associations", force: :cascade do |t|
    t.integer  "worksheet_id"
    t.integer  "question_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "worksheet_questions_associations", ["question_id"], name: "index_worksheet_questions_associations_on_question_id", using: :btree
  add_index "worksheet_questions_associations", ["worksheet_id"], name: "index_worksheet_questions_associations_on_worksheet_id", using: :btree

  create_table "worksheet_sets", force: :cascade do |t|
    t.string   "title"
    t.integer  "factory_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "worksheet_sets", ["factory_id"], name: "index_worksheet_sets_on_factory_id", using: :btree
  add_index "worksheet_sets", ["group_id"], name: "index_worksheet_sets_on_group_id", using: :btree

  create_table "worksheets", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.boolean  "archived"
    t.integer  "worksheet_set_id"
  end

  add_index "worksheets", ["worksheet_set_id"], name: "index_worksheets_on_worksheet_set_id", using: :btree

  add_foreign_key "groups", "users"
  add_foreign_key "questions", "factory_skill_associations"
  add_foreign_key "questions", "skills"
  add_foreign_key "results", "questions"
  add_foreign_key "results", "worksheets"
  add_foreign_key "skills", "sectors"
  add_foreign_key "worksheet_questions_associations", "questions"
  add_foreign_key "worksheet_questions_associations", "worksheets"
  add_foreign_key "worksheet_sets", "factories"
  add_foreign_key "worksheet_sets", "groups"
  add_foreign_key "worksheets", "worksheet_sets"
end
