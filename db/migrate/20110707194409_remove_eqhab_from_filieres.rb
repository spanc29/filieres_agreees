class RemoveEqhabFromFilieres < ActiveRecord::Migration
  def self.up
    remove_column :filieres, :eq_hab_mini
    remove_column :filieres, :eq_hab_max
    add_column :filieres, :eq_hab, :string
  end

  def self.down
    add_column :filieres, :eq_hab_max, :integer
    add_column :filieres, :eq_hab_mini, :integer
  end
end
