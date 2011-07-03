class RemoveCout < ActiveRecord::Migration
  def self.up
    drop_table :couts
  end

  def self.down
  end
end
