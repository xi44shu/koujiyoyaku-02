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

ActiveRecord::Schema.define(version: 3022_09_07_101030) do

  create_table "details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "pipe_type", null: false
    t.integer "pipe_size", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prime_contractors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "pc_name", null: false
    t.string "pc_contact_person", null: false
    t.string "pc_telephone", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "public_utilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "pu_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "schedule_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "schedule_id", null: false
    t.bigint "detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["detail_id"], name: "index_schedule_details_on_detail_id"
    t.index ["schedule_id"], name: "index_schedule_details_on_schedule_id"
  end

  create_table "schedules", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "scheduled_date", null: false
    t.integer "time_zone_id", null: false
    t.time "start_time", null: false
    t.string "area", null: false
    t.integer "size_id", null: false
    t.integer "accuracy_id", null: false
    t.bigint "team_id", null: false
    t.bigint "user_id", null: false
    t.bigint "trading_company_id"
    t.bigint "prime_contractor_id"
    t.bigint "detail_id"
    t.bigint "public_utility_id"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["detail_id"], name: "index_schedules_on_detail_id"
    t.index ["prime_contractor_id"], name: "index_schedules_on_prime_contractor_id"
    t.index ["public_utility_id"], name: "index_schedules_on_public_utility_id"
    t.index ["team_id"], name: "index_schedules_on_team_id"
    t.index ["trading_company_id"], name: "index_schedules_on_trading_company_id"
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "team_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_name"], name: "index_teams_on_team_name", unique: true
  end

  create_table "trading_companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tc_name", null: false
    t.string "tc_contact_person", null: false
    t.string "tc_telephone", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["first_name"], name: "index_users_on_first_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "schedule_details", "details"
  add_foreign_key "schedule_details", "schedules"
  add_foreign_key "schedules", "details"
  add_foreign_key "schedules", "prime_contractors"
  add_foreign_key "schedules", "public_utilities"
  add_foreign_key "schedules", "teams"
  add_foreign_key "schedules", "trading_companies"
  add_foreign_key "schedules", "users"
end
