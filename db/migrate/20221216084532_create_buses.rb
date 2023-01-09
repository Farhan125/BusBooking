class CreateBuses < ActiveRecord::Migration[7.0]
  def change
    create_table :buses do |t|
      t.string :bus_no
      t.integer :total_seats
      t.integer :status
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
