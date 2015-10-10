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

ActiveRecord::Schema.define(version: 20151009135431) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_role_assigns", force: :cascade do |t|
    t.integer  "admin_role_id", limit: 4
    t.integer  "admin_user_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "admin_role_assigns", ["admin_role_id"], name: "index_admin_role_assigns_on_admin_role_id", using: :btree
  add_index "admin_role_assigns", ["admin_user_id"], name: "index_admin_role_assigns_on_admin_user_id", using: :btree

  create_table "admin_roles", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 255, default: "", null: false
    t.string   "tel",                    limit: 255
    t.string   "address",                limit: 255
    t.string   "corporate_url",          limit: 255
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "item_contacts", force: :cascade do |t|
    t.string   "name",       limit: 255,   null: false
    t.string   "email",      limit: 255,   null: false
    t.string   "purpose",    limit: 255,   null: false
    t.text     "comment",    limit: 65535
    t.datetime "arrive_at",                null: false
    t.integer  "item_id",    limit: 4,     null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "item_images", force: :cascade do |t|
    t.string   "image_type", limit: 255
    t.binary   "image_pass", limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "item_id",    limit: 4
  end

  create_table "items", force: :cascade do |t|
    t.string   "name",             limit: 255,   default: ""
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "price",            limit: 255
    t.string   "address",          limit: 255,   default: ""
    t.string   "sub_address",      limit: 255,                null: false
    t.float    "security_deposit", limit: 24,                 null: false
    t.float    "key_money",        limit: 24,                 null: false
    t.string   "station",          limit: 255,                null: false
    t.string   "walk_to",          limit: 255,                null: false
    t.string   "floor_plans",      limit: 255,                null: false
    t.string   "square_meter",     limit: 255
    t.string   "item_age",         limit: 255
    t.text     "equipment",        limit: 65535
    t.text     "description",      limit: 65535
    t.integer  "admin_user_id",    limit: 4,                  null: false
    t.string   "image",            limit: 255
  end

  add_index "items", ["name"], name: "index_items_on_name", unique: true, using: :btree

end
