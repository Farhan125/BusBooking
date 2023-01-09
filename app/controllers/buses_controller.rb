class BusesController < ApplicationController
  def new
    @bus=Bus.new
  end

  def create
    @bus=Bus.new(bus_params)
    if @bus.save
      flash.alert="Bus Added"
      redirect_to '/welcome/adminhome'
    else
      flash.alert="Bus is not Added"
      redirect_to buses_path
    end
  end

  def show
    @bus_list=Bus.all
  end

  def destroy
    @bus = Bus.find(params[:id])
    
    if @bus.present? && @bus.status == 'Available'
      @bus.destroy
      flash.alert= "Bus is successfully deleted." 
      redirect_to '/buses/show'
    else
      @bus.present? && @bus.status == 'NotAvailable'
      flash.alert="Bus is in use and cannot be deleted."
      redirect_to '/buses/show'
    end
  
  end
end

private
def bus_params
   params.require(:bus).permit(:bus_no,:total_seats,:company_id)
end
