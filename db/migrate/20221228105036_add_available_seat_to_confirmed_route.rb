class AddAvailableSeatToConfirmedRoute < ActiveRecord::Migration[7.0]
  def change
    add_column :confirmed_routes, :available_seat, :integer
  end
end
