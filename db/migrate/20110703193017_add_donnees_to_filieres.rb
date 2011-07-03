class AddDonneesToFilieres < ActiveRecord::Migration
  def self.up
    add_column :filieres, :conso_elect, :integer
    add_column :filieres, :cout_annuel, :integer
    add_column :filieres, :cout_15ans, :integer
  end

  def self.down
    remove_column :filieres, :cout_15ans
    remove_column :filieres, :cout_annuel
    remove_column :filieres, :conso_elect
  end
end
