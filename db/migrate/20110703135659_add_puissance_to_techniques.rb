class AddPuissanceToTechniques < ActiveRecord::Migration
  def self.up
    add_column :techniques, :puiss_elect_total, :integer
  end

  def self.down
    remove_column :techniques, :puiss_elect_total
  end
end
