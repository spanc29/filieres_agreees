class AddIdToCout < ActiveRecord::Migration
  def self.up
    add_column :couts, :filiere_id, :integer
  end

  def self.down
    remove_column :couts, :filiere_id
  end
end
