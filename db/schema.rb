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

ActiveRecord::Schema.define(version: 2024_10_16_171241) do

  create_table "contatos", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.integer "tipo_id"
    t.text "rmk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tipo_id"], name: "index_contatos_on_tipo_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "rua"
    t.string "cidade"
    t.string "estado"
    t.integer "contato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contato_id"], name: "index_enderecos_on_contato_id"
  end

  create_table "telefones", force: :cascade do |t|
    t.string "telefone"
    t.integer "contato_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contato_id"], name: "index_telefones_on_contato_id"
  end

  create_table "tipos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
