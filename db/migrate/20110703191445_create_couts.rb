class CreateCouts < ActiveRecord::Migration
  def self.up
    create_table :couts do |t|
      t.string :poste
      t.string :duree
      t.float :cout_min
      t.float :cout_max
      t.text :obs
      t.integer :filiere_id

      t.timestamps
    end
  end

  def self.down
    drop_table :couts
  end
end
