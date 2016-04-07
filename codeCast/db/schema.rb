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

ActiveRecord::Schema.define(version: 20160407125947) do

  create_table "casts", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "video_url",  null: false
    t.integer  "user_id",    null: false
    t.integer  "tagging_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "casts", ["tagging_id"], name: "index_casts_on_tagging_id"
  add_index "casts", ["user_id"], name: "index_casts_on_user_id"

  create_table "comments", force: :cascade do |t|
    t.text     "body",       null: false
    t.integer  "user_id",    null: false
    t.integer  "cast_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["cast_id"], name: "index_comments_on_cast_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "ratings", force: :cascade do |t|
    t.integer  "rating",     null: false
    t.integer  "user_id",    null: false
    t.integer  "cast_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ratings", ["cast_id"], name: "index_ratings_on_cast_id"
  add_index "ratings", ["rating"], name: "index_ratings_on_rating"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",     null: false
    t.integer  "cast_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "taggings", ["cast_id"], name: "index_taggings_on_cast_id"
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"

  create_table "tags", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "tagging_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tags", ["tagging_id"], name: "index_tags_on_tagging_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "email",           null: false
    t.string   "session_token",   null: false
    t.string   "password_digest", null: false
    t.text     "bio"
    t.string   "profile_pic"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token"

end
