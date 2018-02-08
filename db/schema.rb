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

ActiveRecord::Schema.define(version: 20180208134041) do

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "news", force: :cascade do |t|
    t.text "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string "professionName"
    t.text "professionIntroduction"
    t.text "trainingPositioning"
    t.text "faculty"
    t.text "professionalAdvantage"
    t.text "professionalFeatures"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "projectName"
    t.string "projectType"
    t.string "instructor"
    t.string "businessMentor"
    t.string "unit"
    t.string "title"
    t.string "productDescription"
    t.string "productTechnicalLevel"
    t.string "noveltyProducts"
    t.string "advanced"
    t.string "productCompetitive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.text "introduction"
    t.string "principal"
    t.string "studioName"
    t.text "course"
    t.text "research"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.text "password"
    t.text "phone"
    t.text "name"
    t.text "professionalTeam"
    t.text "jobTitle"
    t.text "education"
    t.text "graduatedSchool"
    t.text "researchDirection"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
