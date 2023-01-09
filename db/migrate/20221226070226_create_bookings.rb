class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :user_name
      t.integer :user_cnic
      t.string :user_email
      t.string :route_name
      t.string :bus_no
      t.datetime :dep_time
      t.datetime :arr_time
      t.integer :seat_no
      t.references :confirmed_route, null: false, foreign_key: true

      t.timestamps
    end
  end
end
