class AddBlockIdToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :block_id, :integer
  end
end
