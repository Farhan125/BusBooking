class RemoveDepTimeFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :dep_time, :datetime
  end
end
