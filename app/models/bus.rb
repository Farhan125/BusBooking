class Bus < ApplicationRecord
  belongs_to :company

  has_many :confirmed_routes
  has_many :routes, through: :confirmed_routes
  
  after_create  :seats

  enum :status, { Available: 0, NotAvailable: 1}, :default => 0

  def seats
    if self.status == 'Available'
   self.update(available_seat: self.total_seats)  
    else
      #Do Nothing

    end
  end
end
