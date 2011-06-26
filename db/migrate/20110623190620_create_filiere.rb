class CreateFilieres < ActiveRecord::Migration
  def self.up
    create_table :filieres do |t|

    t.string   :num_agrement
    t.string   :denomination_commerciale
    t.string   :titulaire
    t.text     :adresse
    t.string   :email
    t.string   :organisme_test
    t.string   :num_avis_jo
    t.date     :date_JO
    t.string   :texte_NOR_jo
    t.string   :lien_legifrance
    t.string   :type_filiere
    t.string   :description_sommaire
    t.text     :description
    t.integer  :eq_hab_mini
    t.integer  :eq_hab_max
    t.boolean  :intermittence
    t.boolean  :avec_nappe
    t.boolean  :test_bacterio
    t.string   :ref_guide_util
    t.string   :site_web
    t.integer  :pourcent_vidange
    t.string   :ouvrage_vidange
    t.string   :periode_vidange
    t.integer  :conso_elect_an
    t.integer  :cout_quinze_ans
    t.boolean  :actif
    t.string   :photo
    t.string   :mes
    t.string   :dbo5
    t.string   :dco

      t.timestamps
    end
  end

  def self.down
    drop_table :filieres
  end
end
