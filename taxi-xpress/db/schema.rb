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

ActiveRecord::Schema.define(version: 20151003162924) do

  create_table "drivers", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "dni",        limit: 4
    t.string   "license",    limit: 10
    t.string   "car_plate",  limit: 7
    t.string   "car_type",   limit: 10
    t.string   "car_brand",  limit: 20
    t.string   "car_model",  limit: 20
    t.string   "car_color",  limit: 20
    t.string   "state",      limit: 10
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "favorite_routes", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "name",       limit: 80
    t.integer  "route_id",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "service_id", limit: 4
    t.integer  "score",      limit: 4
    t.string   "comment",    limit: 20
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "routes", force: :cascade do |t|
    t.string   "description", limit: 200
    t.decimal  "amount",                  precision: 5, scale: 2
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "user_id",              limit: 4
    t.string   "description_route",    limit: 200
    t.string   "type",                 limit: 1
    t.integer  "number_of_passengers", limit: 4
    t.string   "car_type",             limit: 10
    t.string   "payment_type",         limit: 10
    t.datetime "demand_date"
    t.decimal  "amount",                           precision: 5, scale: 2
    t.integer  "driver_id",            limit: 4
    t.string   "state",                limit: 10
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "names",        limit: 80
    t.string   "surnames",     limit: 80
    t.integer  "phone_number", limit: 4
    t.string   "email",        limit: 100
    t.string   "password",     limit: 12
    t.string   "type_user",    limit: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
