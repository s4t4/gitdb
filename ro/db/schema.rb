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

ActiveRecord::Schema.define(version: 20161206140822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airplane_states", primary_key: "idavionestado", id: :integer, force: :cascade do |t|
    t.string "nombreavionestado",       limit: 128
    t.date   "fechaingresoavionestado"
    t.string "netuseravionestado",      limit: 64
    t.index ["idavionestado"], name: "avionestado_pk", unique: true, using: :btree
  end

  create_table "airplanes", primary_key: "idavion", id: :string, limit: 64, force: :cascade do |t|
    t.integer "idavionestado"
    t.integer "cantidadasientos"
    t.index ["idavion"], name: "avion_pk", unique: true, using: :btree
    t.index ["idavionestado"], name: "relationship_6_fk", using: :btree
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "visit_count"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", primary_key: "idcliente", id: :string, limit: 32, force: :cascade do |t|
    t.string "nombrecliente", limit: 64
    t.index ["idcliente"], name: "cliente_pk", unique: true, using: :btree
  end

  create_table "flights", primary_key: "idvuelo", id: :string, limit: 32, force: :cascade, comment: "Entidad principal" do |t|
    t.integer "idbase"
    t.integer "idtipovuelo"
    t.integer "idmantencion"
    t.string  "idfuncionario",     limit: 32
    t.date    "fechasalidavuelo"
    t.date    "fechallegadavuelo"
    t.date    "salidareal"
    t.date    "llegadareal"
    t.index ["idbase"], name: "relationship_13_fk", using: :btree
    t.index ["idfuncionario"], name: "relationship_3_fk", using: :btree
    t.index ["idmantencion"], name: "relationship_15_fk", using: :btree
    t.index ["idtipovuelo"], name: "relationship_12_fk", using: :btree
    t.index ["idvuelo"], name: "vuelo_pk", unique: true, using: :btree
  end

  create_table "hangar_states", primary_key: "idbaseestado", id: :integer, force: :cascade do |t|
    t.string "nombrebaseestado",       limit: 64
    t.date   "fechaingresobaseestado"
    t.string "netuserbaseestado",      limit: 64
    t.index ["idbaseestado"], name: "baseestado_pk", unique: true, using: :btree
  end

  create_table "hangars", primary_key: "idbase", id: :integer, force: :cascade do |t|
    t.integer "idbaseestado"
    t.string  "nombrebase",   limit: 64
    t.string  "pais",         limit: 6
    t.index ["idbase"], name: "base_pk", unique: true, using: :btree
    t.index ["idbaseestado"], name: "relationship_14_fk", using: :btree
  end

  create_table "kind_flights", primary_key: "idtipovuelo", id: :integer, force: :cascade do |t|
    t.string "nombretipovuelo",       limit: 64
    t.date   "fechasalidatipovuelo"
    t.date   "fechallegadatipovuelo"
    t.index ["idtipovuelo"], name: "tipovuelo_pk", unique: true, using: :btree
  end

  create_table "kind_maitenance_states", primary_key: "idtipomantencionestado", id: :integer, force: :cascade do |t|
    t.string "nombretipomantencionestado",      limit: 128
    t.date   "fechaingresotipomantencionestad"
    t.string "netusertipomantencionestado",     limit: 64
    t.index ["idtipomantencionestado"], name: "tipomantencionestado_pk", unique: true, using: :btree
  end

  create_table "kind_maitenances", primary_key: "idtipomantencion", id: :integer, force: :cascade do |t|
    t.integer "idtipomantencionestado"
    t.string  "nombretipomantencion",      limit: 128
    t.date    "fechatipomantencion"
    t.string  "observaciontipomantencion", limit: 1024
    t.index ["idtipomantencion"], name: "tipomantencion_pk", unique: true, using: :btree
    t.index ["idtipomantencionestado"], name: "relationship_10_fk", using: :btree
  end

  create_table "kind_officials", primary_key: "idfuncionariotipo", id: :integer, force: :cascade do |t|
    t.string "nombrefuncionariotipo",  limit: 64
    t.date   "sdf"
    t.string "netuserfuncionariotipo", limit: 64
    t.index ["idfuncionariotipo"], name: "funcionariotipo_pk", unique: true, using: :btree
  end

  create_table "maitenance_states", primary_key: "idmantencionestado", id: :integer, force: :cascade do |t|
    t.string "nombremantencionestado",       limit: 128
    t.date   "fechaingresomantencionestado"
    t.string "netusermantencionestado",      limit: 64
    t.index ["idmantencionestado"], name: "mantencionestado_pk", unique: true, using: :btree
  end

  create_table "maitenances", primary_key: "idmantencion", id: :integer, force: :cascade do |t|
    t.integer "idtipomantencion"
    t.integer "idmantencionestado"
    t.date    "fechamantencion"
    t.string  "observacionmantencion", limit: 1024
    t.index ["idmantencion"], name: "mantencion_pk", unique: true, using: :btree
    t.index ["idmantencionestado"], name: "relationship_11_fk", using: :btree
    t.index ["idtipomantencion"], name: "relationship_9_fk", using: :btree
  end

  create_table "officials", primary_key: "idfuncionario", id: :string, limit: 32, force: :cascade do |t|
    t.integer "idfuncionariotipo"
    t.integer "idfuncionarioestado"
    t.string  "codigofuncionario",   limit: 1024
    t.string  "nombrefuncionario",   limit: 64
    t.index ["idfuncionario"], name: "funcionario_pk", unique: true, using: :btree
    t.index ["idfuncionariotipo"], name: "relationship_2_fk", using: :btree
  end

  create_table "reserves", primary_key: "idreserva", id: :string, limit: 64, force: :cascade do |t|
    t.string  "idavion",       limit: 64
    t.string  "idcliente",     limit: 32
    t.string  "idvuelo",       limit: 32
    t.date    "fechareserva"
    t.integer "numeroasiento"
    t.index ["idavion"], name: "relationship_5_fk", using: :btree
    t.index ["idcliente"], name: "relationship_7_fk", using: :btree
    t.index ["idreserva"], name: "reserva_pk", unique: true, using: :btree
    t.index ["idvuelo"], name: "relationship_4_fk", using: :btree
  end

  add_foreign_key "flights", "hangars", column: "idbase", primary_key: "idbase", name: "fk_vuelo_relations_base", on_update: :restrict, on_delete: :restrict
  add_foreign_key "flights", "kind_flights", column: "idtipovuelo", primary_key: "idtipovuelo", name: "fk_vuelo_relations_tipovuel", on_update: :restrict, on_delete: :restrict
  add_foreign_key "flights", "maitenances", column: "idmantencion", primary_key: "idmantencion", name: "fk_vuelo_relations_mantenci", on_update: :restrict, on_delete: :restrict
  add_foreign_key "flights", "officials", column: "idfuncionario", primary_key: "idfuncionario", name: "fk_vuelo_relations_funciona", on_update: :restrict, on_delete: :restrict
  add_foreign_key "hangars", "hangar_states", column: "idbaseestado", primary_key: "idbaseestado", name: "fk_base_relations_baseesta", on_update: :restrict, on_delete: :restrict
  add_foreign_key "kind_maitenances", "kind_maitenance_states", column: "idtipomantencionestado", primary_key: "idtipomantencionestado", name: "fk_tipomant_relations_tipomant", on_update: :restrict, on_delete: :restrict
  add_foreign_key "maitenances", "kind_maitenances", column: "idtipomantencion", primary_key: "idtipomantencion", name: "fk_mantenci_relations_tipomant", on_update: :restrict, on_delete: :restrict
  add_foreign_key "maitenances", "maitenance_states", column: "idmantencionestado", primary_key: "idmantencionestado", name: "fk_mantenci_relations_mantenci", on_update: :restrict, on_delete: :restrict
  add_foreign_key "officials", "kind_officials", column: "idfuncionariotipo", primary_key: "idfuncionariotipo", name: "fk_funciona_relations_funciona", on_update: :restrict, on_delete: :restrict
  add_foreign_key "reserves", "customers", column: "idcliente", primary_key: "idcliente", name: "fk_reserva_relations_cliente", on_update: :restrict, on_delete: :restrict
  add_foreign_key "reserves", "flights", column: "idvuelo", primary_key: "idvuelo", name: "fk_reserva_relations_vuelo", on_update: :restrict, on_delete: :restrict
end
