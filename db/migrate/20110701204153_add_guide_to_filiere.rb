class AddGuideToFiliere < ActiveRecord::Migration
  def self.up
    add_column :filieres, :guide_pose, :string
  end

  def self.down
    remove_column :filieres, :guide_pose
  end
end
