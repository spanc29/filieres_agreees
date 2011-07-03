class AddDepenseToEntretiens < ActiveRecord::Migration
  def self.up
    add_column :entretiens, :ecout_min, :integer
    add_column :entretiens, :ecout_max, :integer
  end

  def self.down
    remove_column :entretiens, :ecout_max
    remove_column :entretiens, :ecout_min
  end
end
