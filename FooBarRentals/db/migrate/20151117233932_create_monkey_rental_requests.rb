class CreateMonkeyRentalRequests < ActiveRecord::Migration
  def change
    create_table :monkey_rental_requests do |t|
      t.integer :monkey_id, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :status, null: false, default: "PENDING"

      t.timestamps null: false
    end
    add_index :monkey_rental_requests, :monkey_id
  end
end
