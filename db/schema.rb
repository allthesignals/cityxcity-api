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

ActiveRecord::Schema.define(version: 20170402194016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.boolean  "has_tdi_fellow"
    t.string   "cover_image_file_name"
    t.string   "cover_image_content_type"
    t.integer  "cover_image_file_size"
    t.datetime "cover_image_updated_at"
    t.text     "cta_text"
    t.string   "cta_contact"
    t.string   "cta_contact_org"
    t.string   "cta_contact_role"
    t.string   "cta_contact_phone"
    t.string   "cta_contact_email"
    t.text     "feature_cta_default"
    t.text     "investment_cta_default"
    t.text     "parcel_cta_default"
  end

  create_table "features", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.boolean  "is_addressy"
    t.string   "address"
    t.string   "non_addressy_location"
    t.string   "feature_type"
    t.string   "feature_subtype"
    t.boolean  "is_employer"
    t.boolean  "is_street_activating"
    t.json     "open_or_closed"
    t.string   "featured_photo_file_name"
    t.string   "featured_photo_content_type"
    t.integer  "featured_photo_file_size"
    t.datetime "featured_photo_updated_at"
    t.string   "pub_docs_file_name"
    t.string   "pub_docs_content_type"
    t.integer  "pub_docs_file_size"
    t.datetime "pub_docs_updated_at"
    t.string   "priv_docs_file_name"
    t.string   "priv_docs_content_type"
    t.integer  "priv_docs_file_size"
    t.datetime "priv_docs_updated_at"
    t.string   "related_link_title"
    t.string   "related_link_url"
    t.text     "relation_notes"
    t.text     "pub_notes"
    t.text     "cta_text"
    t.string   "cta_contact"
    t.string   "pub_contact_1"
    t.string   "pub_contact_org_1"
    t.string   "pub_contact_role_1"
    t.string   "pub_contact_phone_1"
    t.string   "pub_contact_email_1"
    t.string   "pub_contact_website_1"
    t.string   "pub_contact_2"
    t.string   "pub_contact_org_2"
    t.string   "pub_contact_role_2"
    t.string   "pub_contact_phone_2"
    t.string   "pub_contact_email_2"
    t.string   "pub_contact_website_2"
    t.boolean  "is_collision_point"
    t.index ["city_id"], name: "index_features_on_city_id", using: :btree
  end

  create_table "investments", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "project"
    t.boolean  "is_addressy"
    t.string   "address"
    t.string   "non_addressy_location"
    t.string   "source_type"
    t.boolean  "is_tdi_influenced"
    t.string   "investment_type"
    t.string   "product_massdev"
    t.string   "product_public"
    t.string   "product_private"
    t.boolean  "is_amount_known"
    t.boolean  "is_amount_estimated"
    t.boolean  "is_amount_public"
    t.decimal  "amount_exact"
    t.string   "amount_estimated"
    t.json     "investment_status"
    t.boolean  "is_close_date_approx"
    t.string   "featured_photo_file_name"
    t.string   "featured_photo_content_type"
    t.integer  "featured_photo_file_size"
    t.datetime "featured_photo_updated_at"
    t.string   "pub_docs_file_name"
    t.string   "pub_docs_content_type"
    t.integer  "pub_docs_file_size"
    t.datetime "pub_docs_updated_at"
    t.string   "related_link_title"
    t.string   "related_link_url"
    t.string   "relation_notes"
    t.text     "pub_notes"
    t.text     "cta_text"
    t.string   "cta_contact"
    t.string   "pub_contact_1"
    t.string   "pub_contact_org_1"
    t.string   "pub_contact_role_1"
    t.string   "pub_contact_phone_1"
    t.string   "pub_contact_email_1"
    t.string   "pub_contact_website_1"
    t.string   "pub_contact_2"
    t.string   "pub_contact_org_2"
    t.string   "pub_contact_role_2"
    t.string   "pub_contact_phone_2"
    t.string   "pub_contact_email_2"
    t.string   "pub_contact_website_2"
    t.index ["city_id"], name: "index_investments_on_city_id", using: :btree
  end

  create_table "linkages", force: :cascade do |t|
    t.integer "investment_id"
    t.integer "feature_id"
    t.index ["feature_id"], name: "index_linkages_on_feature_id", using: :btree
    t.index ["investment_id"], name: "index_linkages_on_investment_id", using: :btree
  end

  create_table "parcels", force: :cascade do |t|
    t.integer "city_id"
    t.text    "geom"
    t.string  "ownership_type"
    t.boolean "is_engaged_owner"
    t.string  "land_use"
    t.string  "zoning"
    t.string  "parcel_id"
    t.boolean "is_for_sale"
    t.boolean "is_for_lease"
    t.integer "year_built"
    t.boolean "is_vacant_lot"
    t.string  "ground_floor_vacancy"
    t.string  "upper_floor_vacancy"
    t.string  "own_contact_name"
    t.string  "own_contact_role"
    t.string  "own_contact_organization"
    t.string  "own_contact_phone"
    t.string  "own_contact_email"
    t.text    "pub_notes"
    t.text    "cta_text"
    t.string  "cta_contact"
    t.string  "pub_contact_1"
    t.string  "pub_contact_org_1"
    t.string  "pub_contact_role_1"
    t.string  "pub_contact_phone_1"
    t.string  "pub_contact_email_1"
    t.string  "pub_contact_website_1"
    t.string  "pub_contact_2"
    t.string  "pub_contact_org_2"
    t.string  "pub_contact_role_2"
    t.string  "pub_contact_phone_2"
    t.string  "pub_contact_email_2"
    t.string  "pub_contact_website_2"
    t.index ["city_id"], name: "index_parcels_on_city_id", using: :btree
  end

end
