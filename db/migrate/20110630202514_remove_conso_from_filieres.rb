class RemoveConsoFromFilieres < ActiveRecord::Migration
  def self.up
    remove_column :filieres, :conso_elect_an
    remove_column :filieres, :cout_quinze_ans
    remove_column :filieres, :actif
  end

  def self.down
    add_column :filieres, :actif, :boolean
    add_column :filieres, :cout_quinze_ans, :integer
    add_column :filieres, :conso_elect_an, :integer
  end
end
