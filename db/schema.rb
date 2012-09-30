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

ActiveRecord::Schema.define(:version => 20120930173408) do

  create_table "pies", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "menu_id"
    t.decimal  "price",         :precision => 5, :scale => 2
    t.boolean  "is_vegan"
    t.boolean  "is_vegetarian"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  add_index "pies", ["menu_id"], :name => "index_pies_on_menu_id"

end
