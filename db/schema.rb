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

ActiveRecord::Schema.define(:version => 20111121221210) do

  create_table "couts", :force => true do |t|
    t.string   "poste"
    t.string   "duree"
    t.float    "cout_min"
    t.float    "cout_max"
    t.text     "obs"
    t.integer  "filiere_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entretiens", :force => true do |t|
    t.string   "eouvrage"
    t.string   "eoperation"
    t.string   "erealisation"
    t.text     "eobservat"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "filiere_id"
    t.integer  "ecout_min"
    t.integer  "ecout_max"
    t.integer  "efrequence"
  end

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
    t.boolean  "intermittence"
    t.boolean  "avec_nappe"
    t.boolean  "test_bacterio"
    t.text     "ref_guide_util"
    t.string   "site_web"
    t.integer  "pourcent_vidange"
    t.string   "ouvrage_vidange"
    t.string   "periode_vidange"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
    t.integer  "PCdoc"
    t.integer  "PCdbo"
    t.integer  "PCmes"
    t.integer  "logbacter"
    t.boolean  "sortie_basse"
    t.boolean  "elec"
    t.text     "guide_pose"
    t.integer  "conso_elect"
    t.integer  "cout_annuel"
    t.integer  "cout_15ans_min"
    t.integer  "cout_15ans_max"
    t.string   "lien_guide_pose"
    t.string   "eq_hab"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.integer  "puiss_totale"
    t.string   "elect_obs"
    t.boolean  "saisie"
    t.integer  "demarrage"
    t.float    "dbo5"
    t.float    "mes"
    t.float    "dco"
    t.integer  "bruit"
    t.boolean  "verif"
  end

  create_table "impressions", :force => true do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "session_hash"
    t.string   "ip_address"
    t.string   "message"
    t.string   "referrer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], :name => "controlleraction_ip_index"
  add_index "impressions", ["controller_name", "action_name", "request_hash"], :name => "controlleraction_request_index"
  add_index "impressions", ["controller_name", "action_name", "session_hash"], :name => "controlleraction_session_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], :name => "poly_ip_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], :name => "poly_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], :name => "poly_session_index"
  add_index "impressions", ["user_id"], :name => "index_impressions_on_user_id"

  create_table "photos", :force => true do |t|
    t.string  "photo_name"
    t.string  "legende"
    t.integer "filiere_id"
  end

  create_table "poses", :force => true do |t|
    t.text     "generalite"
    t.text     "ter_normal"
    t.text     "ter_diff"
    t.text     "evacuation"
    t.text     "implantation"
    t.text     "ventil"
    t.boolean  "sous_voirie"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "filiere_id"
  end

  create_table "techniques", :force => true do |t|
    t.string   "poids_vide"
    t.string   "poids_equipe"
    t.string   "volume_utile"
    t.string   "materiaux"
    t.integer  "filiere_id"
    t.text     "commentaires"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom_cuve"
    t.decimal  "diff_ent_sort"
    t.string   "type_cuve"
    t.float    "longueur"
    t.float    "largeur"
    t.float    "hauteur"
    t.integer  "puiss_elect_total"
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
