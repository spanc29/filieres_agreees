class AddCreatorToFilieres < ActiveRecord::Migration
  def self.up
    add_column :filieres, :creator_id, :integer
    add_column :filieres, :updater_id, :integer
  end

  def self.down
    remove_column :filieres, :updater_id
    remove_column :filieres, :creator_id
  end
end
