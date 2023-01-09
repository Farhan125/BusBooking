class ConfirmedRoute < ApplicationRecord
  has_many :userhompages
  has_many :bookings
 #accepts_nested_attributes_for :bookings

  belongs_to :bus
  belongs_to :route
  
  before_save :update_bus_status
  after_destroy  :undo_bus_status

  def update_bus_status
    if self.bus.status == "Available"
      self.bus.update(status: 1)
    else
    
    end
  end

  def undo_bus_status
    if self.bus.status =="NotAvailable"
      self.bus.update(status: 0)
      self.bus.available_seat = self.bus.total_seats
      
    else
      # Do nothing
    end
  end
end

