class AddPhotoToFiliere < ActiveRecord::Migration
  def self.up
    add_column :filieres, :photo, :string
    add_column :filieres, :mes, :string
    add_column :filieres, :dbo5, :string
    add_column :filieres, :dco, :string
  end

  def self.down
    remove_column :filieres, :dco
    remove_column :filieres, :dbo5
    remove_column :filieres, :mes
    remove_column :filieres, :photo
  end
end
