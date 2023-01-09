class RemoveSeatNoFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :seat_no, :integer
  end
end
