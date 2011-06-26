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

ActiveRecord::Schema.define(:version => 20110626192204) do

  create_table "filieres", :force => true do |t|
    t.string   "num_agrement"
    t.string   "denomination_commerciale"
    t.string   "titulaire"
    t.text     "adresse"
    t.string   "email"
    t.string   "organisme_test"
    t.string   "num_avis_jo"
    t.date     "date_JO"
    t.string   "texte_NOR_jo"
    t.string   "lien_legifrance"
    t.string   "type_filiere"
    t.string   "description_sommaire"
    t.text     "description"
    t.integer  "eq_hab_mini"
    t.integer  "eq_hab_max"
    t.boolean  "intermittence"
    t.boolean  "avec_nappe"
    t.boolean  "test_bacterio"
    t.string   "ref_guide_util"
    t.string   "site_web"
    t.integer  "pourcent_vidange"
    t.string   "ouvrage_vidange"
    t.string   "periode_vidange"
    t.integer  "conso_elect_an"
    t.integer  "cout_quinze_ans"
    t.boolean  "actif"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
    t.string   "mes"
    t.string   "dbo5"
    t.string   "dco"
  end

  create_table "techniques", :force => true do |t|
    t.string   "hauteur"
    t.string   "longueur"
    t.string   "largeur"
    t.string   "poids_vide"
    t.string   "poids_equipe"
    t.string   "materiaux"
    t.integer  "filiere_id"
    t.text     "commentaires"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

end
