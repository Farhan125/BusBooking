class RemoveAvailableSeatFromConfirmedRoute < ActiveRecord::Migration[7.0]
  def change
    remove_column :confirmed_routes, :available_seat, :integer
  end
end
