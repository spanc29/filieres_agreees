class AddCuveToTechniques < ActiveRecord::Migration
  def self.up
    add_column :techniques, :nom_cuve, :string
    add_column :techniques, :diff_ent_sort, :decimal
  end

  def self.down
    remove_column :techniques, :diff_ent_sort
    remove_column :techniques, :nom_cuve
  end
end
