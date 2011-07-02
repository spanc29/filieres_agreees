class AddHautToTechnique < ActiveRecord::Migration
  def self.up
    add_column :techniques, :longueur, :float
    add_column :techniques, :largeur, :float
    add_column :techniques, :hauteur, :float
  end

  def self.down
    remove_column :techniques, :hauteur
    remove_column :techniques, :largeur
    remove_column :techniques, :longueur
  end
end
