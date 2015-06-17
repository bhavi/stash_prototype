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

ActiveRecord::Schema.define(version: 20150604170628) do

  create_table "datacite_contributors", force: :cascade do |t|
    t.string   "contributorName",    limit: 255
    t.integer  "name_identifier_id", limit: 4
    t.integer  "resource_id",        limit: 4
    t.integer  "affiliation_id",     limit: 4
    t.integer  "contributorType",    limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "datacite_creators", force: :cascade do |t|
    t.string   "creatorName",        limit: 255
    t.integer  "name_identifier_id", limit: 4
    t.integer  "resource_id",        limit: 4
    t.integer  "affiliation_id",     limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "datacite_dates", force: :cascade do |t|
    t.date     "date"
    t.integer  "dateType",    limit: 4, default: 0
    t.integer  "resource_id", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "datacite_descriptions", force: :cascade do |t|
    t.text     "description",     limit: 65535
    t.integer  "descriptionType", limit: 4,     default: 0
    t.integer  "resource_id",     limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "datacite_name_identifiers", force: :cascade do |t|
    t.string   "nameIdentifier",       limit: 255
    t.string   "nameIdentifierScheme", limit: 255
    t.text     "schemeURI",            limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "datacite_publication_years", force: :cascade do |t|
    t.string   "publicationYear", limit: 255
    t.integer  "resource_id",     limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "datacite_publishers", force: :cascade do |t|
    t.string   "publisher",   limit: 255
    t.integer  "resource_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "datacite_related_identifier_types", force: :cascade do |t|
    t.string   "relatedIdentifierType", limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "datacite_related_identifiers", force: :cascade do |t|
    t.string   "relatedIdentifier",        limit: 255
    t.integer  "relatedIdentifierType_id", limit: 4
    t.integer  "relationType_id",          limit: 4
    t.integer  "resource_id",              limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "datacite_relation_types", force: :cascade do |t|
    t.string   "relationType",          limit: 255,   default: "0"
    t.string   "relatedMetadataScheme", limit: 255
    t.text     "schemeURI",             limit: 65535
    t.string   "schemeType",            limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  create_table "datacite_subjects", force: :cascade do |t|
    t.string   "subject",       limit: 255
    t.string   "subjectScheme", limit: 255
    t.text     "subjectURI",    limit: 65535
    t.integer  "resource_id",   limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "datacite_titles", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.integer  "titleType",   limit: 4
    t.integer  "resource_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "stash_engine_file_uploads", force: :cascade do |t|
    t.string   "upload_file_name",    limit: 255
    t.string   "upload_file_size",    limit: 255
    t.string   "upload_content_type", limit: 255
    t.integer  "resource_id",         limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "stash_engine_image_uploads", force: :cascade do |t|
    t.string   "image_name",  limit: 255
    t.string   "image_size",  limit: 255
    t.string   "image_type",  limit: 255
    t.integer  "resource_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "stash_engine_institutions", force: :cascade do |t|
    t.string   "abbreviation",      limit: 255
    t.string   "short_name",        limit: 255
    t.string   "long_name",         limit: 255
    t.string   "landing_page",      limit: 255
    t.string   "external_id_strip", limit: 255
    t.string   "campus",            limit: 255
    t.string   "url",               limit: 255
    t.text     "url_text",          limit: 65535
    t.string   "logo",              limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "stash_engine_resources", force: :cascade do |t|
    t.string   "local_id",   limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "stash_engine_users", force: :cascade do |t|
    t.string   "first_name",     limit: 255
    t.string   "last_name",      limit: 255
    t.string   "email",          limit: 255
    t.string   "institution_id", limit: 255
    t.string   "provider",       limit: 255
    t.string   "uid",            limit: 255
    t.string   "external_id",    limit: 255
    t.string   "oauth_token",    limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
