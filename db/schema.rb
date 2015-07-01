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

ActiveRecord::Schema.define(version: 20150630175213) do

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.string   "user_type"
    t.string   "document_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_type"
  end

  add_index "bookmarks", ["user_id"], name: "index_bookmarks_on_user_id"

  create_table "datacite_contributors", force: :cascade do |t|
    t.string   "contributorName"
    t.integer  "name_identifier_id"
    t.integer  "resource_id"
    t.integer  "affiliation_id"
    t.integer  "contributorType"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "datacite_creators", force: :cascade do |t|
    t.string   "creatorName"
    t.integer  "name_identifier_id"
    t.integer  "resource_id"
    t.integer  "affiliation_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "datacite_dates", force: :cascade do |t|
    t.date     "date"
    t.integer  "dateType",    default: 0
    t.integer  "resource_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "datacite_descriptions", force: :cascade do |t|
    t.text     "description"
    t.integer  "descriptionType", default: 0
    t.integer  "resource_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "datacite_name_identifiers", force: :cascade do |t|
    t.string   "nameIdentifier"
    t.string   "nameIdentifierScheme"
    t.text     "schemeURI"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "datacite_publication_years", force: :cascade do |t|
    t.string   "publicationYear"
    t.integer  "resource_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "datacite_publishers", force: :cascade do |t|
    t.string   "publisher"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "datacite_related_identifier_types", force: :cascade do |t|
    t.string   "relatedIdentifierType"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "datacite_related_identifiers", force: :cascade do |t|
    t.string   "relatedIdentifier"
    t.integer  "relatedIdentifierType_id"
    t.integer  "relationType_id"
    t.integer  "resource_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "datacite_relation_types", force: :cascade do |t|
    t.string   "relationType",          default: "0"
    t.string   "relatedMetadataScheme"
    t.text     "schemeURI"
    t.string   "schemeType"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "datacite_subjects", force: :cascade do |t|
    t.string   "subject"
    t.string   "subjectScheme"
    t.text     "subjectURI"
    t.integer  "resource_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "datacite_titles", force: :cascade do |t|
    t.string   "title"
    t.integer  "titleType"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "file_uploads", force: :cascade do |t|
    t.string   "upload_file_name"
    t.string   "upload_file_size"
    t.string   "upload_content_type"
    t.integer  "resource_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "image_uploads", force: :cascade do |t|
    t.string   "image_name"
    t.string   "image_size"
    t.string   "image_type"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "institutions", force: :cascade do |t|
    t.string   "abbreviation"
    t.string   "short_name"
    t.string   "long_name"
    t.string   "landing_page"
    t.string   "external_id_strip"
    t.string   "campus"
    t.string   "url"
    t.text     "url_text"
    t.string   "logo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "resources", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.text     "query_params"
    t.integer  "user_id"
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "searches", ["user_id"], name: "index_searches_on_user_id"

  create_table "stash_engine_image_uploads", force: :cascade do |t|
    t.string   "image_name"
    t.string   "image_size"
    t.string   "image_type"
    t.integer  "resource_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stash_engine_institutions", force: :cascade do |t|
    t.string   "abbreviation"
    t.string   "short_name"
    t.string   "long_name"
    t.string   "landing_page"
    t.string   "external_id_strip"
    t.string   "campus"
    t.string   "url"
    t.text     "url_text"
    t.string   "logo"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "stash_engine_resources", force: :cascade do |t|
    t.string   "local_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stash_engine_users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "institution_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "external_id"
    t.string   "oauth_token"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "institution_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "external_id"
    t.string   "oauth_token"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
