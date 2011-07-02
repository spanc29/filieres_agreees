class RemoveHauteurFromTechniques < ActiveRecord::Migration
  def self.up
    remove_column :techniques, :hauteur
    remove_column :techniques, :longueur
    remove_column :techniques, :largeur
    add_column :techniques, :type_cuve, :string
    add_column :techniques, :hauteur, :decimal, :precision => 2, :scale => 2
    add_column :techniques, :longueur, :decimal, :precision => 2, :scale => 2
    add_column :techniques, :largeur, :decimal, :precision => 2, :scale => 2
  end

  def self.down
    add_column :techniques, :largeur, :string
    add_column :techniques, :longueur, :string
    add_column :techniques, :hauteur, :string
  end
end
