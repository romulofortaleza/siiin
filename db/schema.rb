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

ActiveRecord::Schema.define(version: 2019_03_27_200539) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "reason"
    t.string "cnpj"
    t.string "phone"
    t.string "mayor"
    t.string "cpf_mayor"
    t.string "city_hall"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instrument_registrations", force: :cascade do |t|
    t.integer "instrument_number"
    t.integer "internal_number"
    t.integer "extra_number"
    t.string "object_agreement"
    t.string "granting_organ"
    t.string "linked_organ"
    t.string "existence_im"
    t.string "instituition_name"
    t.string "value_transfer"
    t.string "counterpart_value"
    t.string "total"
    t.date "signature_date"
    t.date "end_date"
    t.date "suspensive_date"
    t.string "type"
    t.string "address"
    t.date "open_date"
    t.string "organ"
    t.string "user"
    t.string "signature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "instrument_type"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
