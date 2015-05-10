class CreateAddPatientIdToOrders < ActiveRecord::Migration
  def change
    create_table :add_patient_id_to_orders do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
