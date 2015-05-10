class AddDietIdToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :diet_id, :integer
  end
end
