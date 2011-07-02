class AddIdToConditionpose < ActiveRecord::Migration
  def self.up
    add_column :conditionposes, :filiere_id, :integer
  end

  def self.down
    remove_column :conditionposes, :filiere_id
  end
end
