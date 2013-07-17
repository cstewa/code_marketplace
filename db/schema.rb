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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130716033417) do

  create_table "developers", :force => true do |t|
    t.string   "price"
    t.string   "github"
    t.string   "heroku"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "developers_languages", :force => true do |t|
    t.integer "developer_id"
    t.integer "language_id"
  end

  create_table "developers_projects", :force => true do |t|
    t.integer "developer_id"
    t.integer "project_id"
  end

  create_table "developers_tags", :force => true do |t|
    t.integer "tag_id"
    t.integer "developer_id"
  end

  create_table "fouders_tags", :force => true do |t|
    t.integer "tag_id"
    t.integer "founder_id"
  end

  create_table "founders", :force => true do |t|
    t.string   "linked_in"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "languages", :force => true do |t|
    t.string   "name",       :default => " "
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "languages_projects", :force => true do |t|
    t.integer "language_id"
    t.integer "project_id"
  end

  create_table "pending_developers", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pending_projects", :force => true do |t|
    t.string   "name"
    t.integer  "developer_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "company"
    t.text     "description"
    t.string   "price"
    t.string   "git_link"
    t.text     "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "founder_id"
  end

  create_table "projects_tags", :force => true do |t|
    t.integer "tag_id"
    t.integer "project_id"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "profile_type"
    t.integer  "profile_id"
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone"
    t.string   "photo_url"
    t.text     "looking_for"
    t.string   "name"
    t.boolean  "is_admin"
    t.string   "company"
    t.text     "about_me"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
