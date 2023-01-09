class AddAvailableSeatToBus < ActiveRecord::Migration[7.0]
  def change
    add_column :buses, :available_seat, :integer
  end
end
