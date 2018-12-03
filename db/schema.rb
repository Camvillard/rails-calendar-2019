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

ActiveRecord::Schema.define(version: 2018_12_03_233322) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "product_images", force: :cascade do |t|
    t.string "image_url"
    t.bigint "products_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["products_id"], name: "index_product_images_on_products_id"
  end

  create_table "product_orders", force: :cascade do |t|
    t.bigint "products_id"
    t.bigint "shippings_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["products_id"], name: "index_product_orders_on_products_id"
    t.index ["shippings_id"], name: "index_product_orders_on_shippings_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_image", default: "", null: false
  end

  create_table "shippings", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "product_orders", "products", column: "products_id"
  add_foreign_key "product_orders", "shippings", column: "shippings_id"
end
