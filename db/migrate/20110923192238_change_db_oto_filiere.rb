class ChangeDbOtoFiliere < ActiveRecord::Migration
  def up
    remove_column :filieres, :dbo5
    add_column :filieres, :dbo5, :float
    remove_column :filieres, :mes
    add_column :filieres, :mes, :float
    remove_column :filieres, :dco
    add_column :filieres, :dco, :float
    change_column :filieres, :ref_guide_util, :text
    change_column :filieres, :guide_pose, :text
  end

  def down
  end
end
