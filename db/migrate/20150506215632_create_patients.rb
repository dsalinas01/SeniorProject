class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :fname
      t.string :lname
      t.integer :MRN
      t.integer :SSN
      t.date :birthday

      t.timestamps
    end
  end
end
