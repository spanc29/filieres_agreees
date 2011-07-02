class AddDcoToFilieres < ActiveRecord::Migration
  def self.up
    add_column :filieres, :PCdoc, :integer
    add_column :filieres, :PCdbo, :integer
    add_column :filieres, :PCmes, :integer
    add_column :filieres, :logbacter, :integer
    add_column :filieres, :sortie_basse, :boolean
    add_column :filieres, :elec, :boolean
  end

  def self.down
    remove_column :filieres, :elec
    remove_column :filieres, :sortie_basse
    remove_column :filieres, :logbacter
    remove_column :filieres, :PCmes
    remove_column :filieres, :PCdbo
    remove_column :filieres, :PCdoc
  end
end
