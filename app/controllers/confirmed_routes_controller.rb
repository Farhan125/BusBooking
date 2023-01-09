class ConfirmedRoutesController < ApplicationController
  def new
    @confirmed_route=ConfirmedRoute.new
  end

  def show
    @confirmed_routes_list=ConfirmedRoute.all
  end
  
  def create
  @confirmed_route=ConfirmedRoute.new(confirm_params)
   if @confirmed_route.bus.status =="Available" 
     @confirmed_route.save
     flash.alert="Route is Confirmed"
     redirect_to '/welcome/adminhome'
   else
     flash.alert="Route is not Confirmed Or Bus is already Booked"
     redirect_to confirmed_routes_path
   end
end
 
  def update
  end

  def destroy
    @confirmed_route = ConfirmedRoute.find(params[:id])
    byebug
    if @confirmed_route.present? && @confirmed_route.bus.available_seat == @confirmed_route.bus.total_seats
      @confirmed_route.destroy
      flash.alert= "Confirmed Route is successfully deleted."
    else
      flash.alert= "Bus in use and cannot be deleted" 
    end
    redirect_to '/welcome/adminhome'
  end

end

private
 
def confirm_params
  params.require(:confirmed_route).permit(:date,:dep_time,:arr_time,:bus_id,:route_id,:price)
end