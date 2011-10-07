class AddFiliereToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :filiere_id, :integer
  end
end
