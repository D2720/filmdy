# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_27_165755) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.string "description"
    t.string "avatar_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_actors_on_name"
  end

  create_table "categories", force: :cascade do |t|
    t.string "keyword"
    t.integer "count"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["count"], name: "index_categories_on_count"
    t.index ["keyword"], name: "index_categories_on_keyword", unique: true
    t.index ["language"], name: "index_categories_on_language"
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.string "description"
    t.string "avatar_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_directors_on_name"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.integer "content_type"
    t.integer "status"
    t.datetime "uploaded_at"
    t.string "category"
    t.string "tag"
    t.string "description"
    t.date "released_at"
    t.string "director"
    t.string "actor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["released_at"], name: "index_items_on_released_at"
    t.index ["title"], name: "index_items_on_title"
  end

  create_table "items_actors", id: false, force: :cascade do |t|
    t.integer "item_id"
    t.integer "actor_id"
  end

  create_table "items_categories", id: false, force: :cascade do |t|
    t.integer "item_id"
    t.integer "category_id"
  end

  create_table "items_directors", id: false, force: :cascade do |t|
    t.integer "item_id"
    t.integer "director_id"
  end

  create_table "items_tags", id: false, force: :cascade do |t|
    t.integer "item_id"
    t.integer "tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "keyword"
    t.integer "count"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["count"], name: "index_tags_on_count"
    t.index ["keyword"], name: "index_tags_on_keyword", unique: true
    t.index ["language"], name: "index_tags_on_language"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "user_name"
    t.integer "age"
    t.integer "gender"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
