class RemoveCondition < ActiveRecord::Migration
  def self.up
    drop_table :conditionposes
  end

  def self.down
  end
end
