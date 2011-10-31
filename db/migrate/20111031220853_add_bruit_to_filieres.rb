class AddBruitToFilieres < ActiveRecord::Migration
  def change
    add_column :filieres, :bruit, :integer
  end
end
