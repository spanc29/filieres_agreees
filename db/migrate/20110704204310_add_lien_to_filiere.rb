class AddLienToFiliere < ActiveRecord::Migration
  def self.up
    add_column :filieres, :lien_guide_pose, :string
  end

  def self.down
    remove_column :filieres, :lien_guide_pose
  end
end
