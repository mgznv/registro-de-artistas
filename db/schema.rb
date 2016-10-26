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

ActiveRecord::Schema.define(version: 20161024162129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "nombre_artista"
    t.text     "semblanza"
    t.string   "telefono"
    t.string   "email"
    t.string   "banco"
    t.string   "numero_de_cuenta"
    t.string   "titulo_de_la_obra"
    t.string   "medida"
    t.string   "precio_estimado"
    t.string   "precio_de_salida"
    t.string   "porcentaje_de_donacion"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "devices", force: :cascade do |t|
    t.string   "responsable"
    t.string   "area"
    t.string   "puesto"
    t.string   "marca"
    t.string   "modelo"
    t.string   "serie"
    t.string   "proveedor"
    t.string   "factura"
    t.string   "fecha_factura"
    t.string   "ip"
    t.string   "mac_address"
    t.string   "procesador"
    t.string   "memoria"
    t.string   "disco_duro"
    t.string   "version_de_sistema_operativo"
    t.string   "tipo_licencia"
    t.string   "clave_licencia"
    t.string   "factura_licencia"
    t.string   "version_office"
    t.string   "clave_office"
    t.string   "factura_office"
    t.string   "antivirus"
    t.string   "clave_antivirus"
    t.string   "factura_antivirus"
    t.string   "tipo"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "pruebas", force: :cascade do |t|
    t.string   "responsable"
    t.string   "marca"
    t.string   "modelo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
