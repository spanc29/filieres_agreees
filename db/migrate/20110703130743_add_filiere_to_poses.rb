class AddFiliereToPoses < ActiveRecord::Migration
  def self.up
    add_column :poses, :filiere_id, :integer
  end

  def self.down
    remove_column :poses, :filiere_id
  end
end
