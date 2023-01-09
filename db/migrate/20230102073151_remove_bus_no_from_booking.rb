class RemoveBusNoFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :bus_no, :string
  end
end
