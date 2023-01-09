class BookingsController < ApplicationController
  def new
    @user=Booking.new
  
  end

  def create
    # userinfo=booking_params
    # username=userinfo[:user_name]
    # usercnic=userinfo[:user_cnic]
    # final_booking=(user_name= username,user_cnic= usercnic,user_email= current_user.email,route_name= $route.first.route.name,bus_no= $route.first.bus.bus_no,dep_time= $route.first.dep_time,arr_time= $route.first.arr_time, seat_no= '1')
    
    booking = Booking.new(booking_params)
    
     
    if booking.save
       flash.alert="Your Booking has Confirmed."
       UserMailer.booking(booking).deliver_now
       redirect_to '/userhomepages/show'
     else
       flash.alert="Your Booking is not Confirmed."
       redirect_to bookings_path
     end

  end

  def show
    @booking_list = Booking.all
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
 
    if @booking.present?
      @booking.destroy
      UserMailer.delete_booking(@booking).deliver_now
      flash.alert= "Booking is successfully deleted." 
      redirect_to '/welcome/adminhome'
    else
      flash.alert="Booking is cannot be deleted."
      redirect_to '/bookings/show'
    end
  
  end
end

private
def booking_params
   params.require(:booking).permit(:user_name,:user_cnic,:user_email,:confirmed_route_id)
end
