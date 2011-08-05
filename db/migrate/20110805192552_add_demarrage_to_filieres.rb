class AddDemarrageToFilieres < ActiveRecord::Migration
  def self.up
    add_column :filieres, :demarrage, :integer
  end

  def self.down
    remove_column :filieres, :demarrage
  end
end
