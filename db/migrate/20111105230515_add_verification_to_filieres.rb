class AddVerificationToFilieres < ActiveRecord::Migration
  def change
    add_column :filieres, :verif, :boolean
  end
end
