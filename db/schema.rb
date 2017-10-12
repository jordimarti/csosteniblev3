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

ActiveRecord::Schema.define(version: 20171012123603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cas_practics", force: :cascade do |t|
    t.string "titol_ca"
    t.text "resum_ca"
    t.string "permalink_ca"
    t.text "descripcio_ca"
    t.string "emplacament_ca"
    t.text "arquitectura_ca"
    t.text "materials_ca"
    t.text "energia_ca"
    t.text "aigua_ca"
    t.text "certificacions_ca"
    t.string "arquitectes_ca"
    t.string "any_construccio_ca"
    t.string "us_edifici_ca"
    t.string "tipus_promocio_ca"
    t.string "titol_es"
    t.text "resum_es"
    t.string "permalink_es"
    t.text "descripcio_es"
    t.string "emplacament_es"
    t.text "arquitectura_es"
    t.text "materials_es"
    t.text "energia_es"
    t.text "aigua_es"
    t.text "certificacions_es"
    t.string "arquitectes_es"
    t.string "any_construccio_es"
    t.string "us_edifici_es"
    t.string "tipus_promocio_es"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foto_casos", force: :cascade do |t|
    t.text "image_data"
    t.integer "cas_practic_id"
    t.text "text_ca"
    t.text "text_es"
    t.text "text_en"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "image_uploaders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "noticies", force: :cascade do |t|
    t.string "titol_ca"
    t.text "resum_ca"
    t.string "permalink_ca"
    t.text "contingut_ca"
    t.string "titol_es"
    t.text "resum_es"
    t.string "permalink_es"
    t.text "contingut_es"
    t.datetime "data"
    t.boolean "dapc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.text "image_data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productes", force: :cascade do |t|
    t.integer "id_ps"
    t.string "nom_ca"
    t.string "nom_es"
    t.string "descripcio_ca"
    t.string "descripcio_es"
    t.text "caracteristiques_ca"
    t.text "caracteristiques_es"
    t.text "aplicacio_ca"
    t.text "aplicacio_es"
    t.text "disponibilitat_ca"
    t.text "disponibilitat_es"
    t.text "destacats_ca"
    t.text "destacats_es"
    t.integer "valoracio"
    t.string "ambit"
    t.integer "ecoetiqueta"
    t.integer "ecoetiqueta2"
    t.integer "visible"
    t.string "img_petita"
    t.string "img1"
    t.string "nom_doc1_ca"
    t.string "nom_doc1_es"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "role", default: "user"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "titol_ca"
    t.text "resum_ca"
    t.string "permalink_ca"
    t.text "contingut_ca"
    t.string "titol_es"
    t.text "resum_es"
    t.string "permalink_es"
    t.text "contingut_es"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_data"
  end

end
