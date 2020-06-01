# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_01_084237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bottles", force: :cascade do |t|
    t.string "region"
    t.string "domain"
    t.integer "price_range"
    t.string "color"
    t.string "typical_meal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "appellation"
    t.integer "vintage"
    t.string "grape_variety"
    t.string "characteristics"
    t.string "aroma"
    t.string "country"
    t.string "label"
    t.text "description"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "content"
    t.bigint "bottle_id", null: false
    t.index ["bottle_id"], name: "index_feedbacks_on_bottle_id"
  end

  create_table "user_answers", force: :cascade do |t|
    t.string "question_name"
    t.string "question_gender"
    t.string "question_age"
    t.string "question_city"
    t.string "question_personnality"
    t.string "question_reason"
    t.string "question_vineyard_management"
    t.string "question_mind"
    t.string "question_nine"
    t.string "question_ten"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.string "question_exploration"
    t.string "question_colour"
    t.string "question_grape_red"
    t.string "question_grape_rose"
    t.string "question_grape_sweet"
    t.string "question_grape_white"
    t.string "question_grape_port"
    t.string "question_grape_sparkling"
    t.string "regions_list"
    t.string "aromas_list"
    t.integer "vintage_range"
    t.string "meals_list"
    t.string "america_list"
    t.string "europe_list"
    t.string "oceania_list"
    t.string "worlds_list"
    t.index ["user_id"], name: "index_user_answers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "feedbacks", "bottles"
  add_foreign_key "user_answers", "users"
end
