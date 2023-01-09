class RemoveRouteNameFromBooking < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :route_name, :string
  end
end
