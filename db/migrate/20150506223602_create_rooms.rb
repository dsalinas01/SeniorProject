class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :rmnumber
      t.integer :phone

      t.timestamps
    end
  end
end
