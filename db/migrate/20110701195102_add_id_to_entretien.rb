class AddIdToEntretien < ActiveRecord::Migration
  def self.up
    add_column :entretiens, :filiere_id, :integer
  end

  def self.down
    remove_column :entretiens, :filiere_id
  end
end
