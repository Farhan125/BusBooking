class RemoveArrTimeFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :arr_time, :datetime
  end
end
