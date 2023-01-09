class Booking < ApplicationRecord
  belongs_to :confirmed_route
  before_save :seat_selection
  after_destroy :seat_reversion


  def seat_selection
    
    if self.confirmed_route.bus.available_seat == 0
      # Seats Full message
      #errors[:available_seat] << "No Seats Available" 
      
      errors.add(:booking, "Seats are Full")
      byebug
    else
      
      available_seat=confirmed_route.bus.available_seat
      total_seats = confirmed_route.bus.total_seats
      seat_no = (total_seats) - ((available_seat) -1)
      self.seat_no = seat_no
      remain_seats = confirmed_route.bus.available_seat - 1
      confirmed_route.bus.update(available_seat: remain_seats)      
    
      # DO Boooking
      
    end
  end

  def seat_reversion
    
      available_seat=confirmed_route.bus.available_seat
      total_seats = confirmed_route.bus.total_seats
      if available_seat <= total_seats
      remain_seats = confirmed_route.bus.available_seat + 1
      confirmed_route.bus.update(available_seat: remain_seats) 
      else
        #Do Nothing
      end
  end
end
