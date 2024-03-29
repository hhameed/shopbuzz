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

ActiveRecord::Schema.define(version: 20160430020159) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "brands", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "catalogue_pages", force: :cascade do |t|
    t.string   "url"
    t.integer  "category_seller_page_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "catalogue_pages", ["category_seller_page_id"], name: "index_catalogue_pages_on_category_seller_page_id"
  add_index "catalogue_pages", ["url"], name: "index_catalogue_pages_on_url"

  create_table "categories", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_seller_pages", force: :cascade do |t|
    t.string   "url"
    t.integer  "category_id"
    t.integer  "seller_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "category_seller_pages", ["category_id"], name: "index_category_seller_pages_on_category_id"
  add_index "category_seller_pages", ["seller_id"], name: "index_category_seller_pages_on_seller_id"

  create_table "category_specifications", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "specification_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "category_specifications", ["category_id"], name: "index_category_specifications_on_category_id"
  add_index "category_specifications", ["specification_id"], name: "index_category_specifications_on_specification_id"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "province_id"
  end

  add_index "cities", ["province_id"], name: "index_cities_on_province_id"

  create_table "product_reviews", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "rating"
    t.text     "content"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_reviews", ["product_id"], name: "index_product_reviews_on_product_id"

  create_table "product_specifications", force: :cascade do |t|
    t.string   "value"
    t.integer  "specification_id"
    t.integer  "product_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "product_specifications", ["product_id"], name: "index_product_specifications_on_product_id"
  add_index "product_specifications", ["specification_id"], name: "index_product_specifications_on_specification_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "image"
    t.float    "rating"
    t.integer  "review_count"
    t.integer  "views"
    t.integer  "brand_id"
    t.integer  "category_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "products", ["brand_id"], name: "index_products_on_brand_id"
  add_index "products", ["category_id"], name: "index_products_on_category_id"
  add_index "products", ["name"], name: "index_products_on_name"

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seller_product_link_views", force: :cascade do |t|
    t.string   "ip"
    t.datetime "accessed"
    t.integer  "seller_product_link_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "seller_product_link_views", ["seller_product_link_id"], name: "index_seller_product_link_views_on_seller_product_link_id"

  create_table "seller_product_links", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "url"
    t.string   "info"
    t.datetime "not_found"
    t.integer  "product_id"
    t.integer  "category_id"
    t.integer  "seller_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "seller_product_links", ["category_id"], name: "index_seller_product_links_on_category_id"
  add_index "seller_product_links", ["product_id"], name: "index_seller_product_links_on_product_id"
  add_index "seller_product_links", ["seller_id"], name: "index_seller_product_links_on_seller_id"
  add_index "seller_product_links", ["url"], name: "index_seller_product_links_on_url"

  create_table "seller_reviews", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "rating"
    t.text     "content"
    t.integer  "seller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seller_reviews", ["seller_id"], name: "index_seller_reviews_on_seller_id"

  create_table "sellers", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specifications", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "used_products", force: :cascade do |t|
    t.string   "name"
    t.integer  "condition_ex"
    t.integer  "price"
    t.text     "additional_info"
    t.string   "warranty"
    t.string   "usage_duration"
    t.string   "contact_number"
    t.string   "email"
    t.integer  "product_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "city_id"
    t.integer  "category_id"
  end

  add_index "used_products", ["category_id"], name: "index_used_products_on_category_id"
  add_index "used_products", ["city_id"], name: "index_used_products_on_city_id"
  add_index "used_products", ["product_id"], name: "index_used_products_on_product_id"

end
