class AddPuissanceToFiliere < ActiveRecord::Migration
  def self.up
    add_column :filieres, :puiss_totale, :integer
    add_column :filieres, :elect_obs, :string
  end

  def self.down
    remove_column :filieres, :elect_obs
    remove_column :filieres, :puiss_totale
  end
end
