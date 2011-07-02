class CreateEntretiens < ActiveRecord::Migration
  def self.up
    create_table :entretiens do |t|
      t.string :eouvrage
      t.string :eoperation
      t.string :efrequence
      t.string :erealisation
      t.text :eobservat

      t.timestamps
    end
  end

  def self.down
    drop_table :entretiens
  end
end
