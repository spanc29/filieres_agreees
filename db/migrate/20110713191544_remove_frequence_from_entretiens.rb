class RemoveFrequenceFromEntretiens < ActiveRecord::Migration
  def self.up
    remove_column :entretiens, :efrequence
    add_column :entretiens, :efrequence, :integer
  end

  def self.down
    add_column :entretiens, :efrequence, :string
    remove_column :entretiens, :efrequence
  end
end
