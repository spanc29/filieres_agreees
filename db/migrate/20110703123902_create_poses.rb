class CreatePoses < ActiveRecord::Migration
  def self.up
    create_table :poses do |t|
      t.text :generalite
      t.text :ter_normal
      t.text :ter_diff
      t.text :evacuation
      t.text :implantation
      t.text :ventil
      t.boolean :sous_voirie

      t.timestamps
    end
  end

  def self.down
    drop_table :poses
  end
end
