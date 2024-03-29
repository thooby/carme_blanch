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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111210214321) do

  create_table "asientos", :force => true do |t|
    t.date     "fecha"
    t.integer  "tipo_id"
    t.integer  "categorium_id"
    t.string   "descripcion"
    t.decimal  "monto"
    t.string   "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cuentum_id"
  end

  create_table "categoria", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cuenta", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "moneda"
  end

  create_table "tipos", :force => true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

  create_table "var_confs", :force => true do |t|
    t.string   "titulo"
    t.string   "name_foto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
