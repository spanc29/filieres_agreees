class RemoveHauteur2FromTechniques < ActiveRecord::Migration
  def self.up
    remove_column :techniques, :hauteur
    remove_column :techniques, :longueur
    remove_column :techniques, :largeur
  end

  def self.down
    add_column :techniques, :largeur, :decimal
    add_column :techniques, :longueur, :decimal
    add_column :techniques, :hauteur, :decimal
  end
end
