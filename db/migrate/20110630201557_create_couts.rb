class CreateCouts < ActiveRecord::Migration
  def self.up
    create_table :couts do |t|
      t.decimal :cannuel , :precision => 5, :scale => 2
      t.decimal :cquinzans, :precision => 6, :scale => 2
      t.decimal :ccontratmaint, :precision => 5, :scale => 2
      t.decimal :c_elect_watt, :precision => 4, :scale => 2
      t.decimal :c_elect_an, :precision => 4, :scale => 2
      t.text :c_obs

      t.timestamps
    end
  end

  def self.down
    drop_table :couts
  end
end
