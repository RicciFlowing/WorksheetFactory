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

ActiveRecord::Schema.define(version: 20151230090955) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "year"
    t.integer  "grade"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "factories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "collection_id"
  end

  add_index "factories", ["collection_id"], name: "index_factories_on_collection_id"

  create_table "factory_skill_associations", force: :cascade do |t|
    t.integer  "factory_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "factory_skill_associations", ["factory_id"], name: "index_factory_skill_associations_on_factory_id"
  add_index "factory_skill_associations", ["skill_id"], name: "index_factory_skill_associations_on_skill_id"

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.string   "solution"
    t.integer  "skill_id"
    t.integer  "factory_skill_association_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "questions", ["factory_skill_association_id"], name: "index_questions_on_factory_skill_association_id"
  add_index "questions", ["skill_id"], name: "index_questions_on_skill_id"

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "skills", ["category_id"], name: "index_skills_on_category_id"

  create_table "worksheet_questions_associations", force: :cascade do |t|
    t.integer  "worksheet_id"
    t.integer  "question_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "worksheet_questions_associations", ["question_id"], name: "index_worksheet_questions_associations_on_question_id"
  add_index "worksheet_questions_associations", ["worksheet_id"], name: "index_worksheet_questions_associations_on_worksheet_id"

  create_table "worksheet_sets", force: :cascade do |t|
    t.string   "name"
    t.integer  "factory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "worksheet_sets", ["factory_id"], name: "index_worksheet_sets_on_factory_id"

# Could not dump table "worksheets" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
