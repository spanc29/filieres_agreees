class CreateTechniques < ActiveRecord::Migration
  def self.up
    create_table :techniques do |t|
      t.string :hauteur
      t.string :longueur
      t.string :largeur
      t.string :poids_vide
      t.string :poids_equipe
      t.string :materiaux
      t.integer :filiere_id
      t.text :commentaires

      t.timestamps
    end
  end

  def self.down
    drop_table :techniques
  end
end
