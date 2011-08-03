class AddSaisieToFiliere < ActiveRecord::Migration
  def self.up
    add_column :filieres, :saisie, :boolean
  end

  def self.down
    remove_column :filieres, :saisie
  end
end
