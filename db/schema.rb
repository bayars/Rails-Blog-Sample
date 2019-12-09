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

ActiveRecord::Schema.define(version: 2019_07_15_060143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "password_digest"
    t.bigint "yazilars_id"
    t.index ["yazilars_id"], name: "index_admin_users_on_yazilars_id"
  end

  create_table "kullanicis", force: :cascade do |t|
    t.string "isim"
    t.string "nickname"
    t.string "email"
    t.datetime "olusturulma"
    t.datetime "songiris"
    t.text "aciklama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yazilars", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.string "slug"
    t.text "body"
    t.text "snippet"
    t.integer "status"
    t.datetime "published_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "admin_users", "yazilars", column: "yazilars_id"
end
