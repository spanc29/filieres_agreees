class AddCoutToFiliere < ActiveRecord::Migration
  def self.up
    add_column :filieres, :cout_15ans_max, :integer
    rename_column :filieres, :cout_15ans, :cout_15ans_min
  end

  def self.down
    remove_column :filieres, :cout_15ans_max
  end
end
