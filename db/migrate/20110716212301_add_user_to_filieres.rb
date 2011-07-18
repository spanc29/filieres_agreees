class AddUserToFilieres < ActiveRecord::Migration
  def self.up
      add_column :filieres, :created_by, :integer
      add_column :filieres, :updated_by, :integer
  end

  def self.down
    remove_column :filieres, :created_by
    remove_column :filieres, :updated_by
  end
end
