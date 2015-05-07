class AddRoomIdToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :room_id, :integer
  end
end
