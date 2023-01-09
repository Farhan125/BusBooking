class RoutesController < ApplicationController
 # before_action :check_record_exists?,
  def new
    @route=Route.new
  end

  def create
    @route=Route.new(route_params)
    if @route.save
      flash.alert="Route Added"
      redirect_to '/welcome/adminhome'
    else
      flash.alert="Route is not Added"
      redirect_to routes_path
    end
  end

  def show
    @route_list=Route.all
  end

  def destroy
    @route = Route.find(params[:id])
    if @route.present?
      @route.destroy
      flash.alert= "Route is successfully deleted." 
    end
    redirect_to '/welcome/adminhome'
  end
end

private
# def check_record_exists?
#   if Route.where(route_params.slice(:name,:departure,:arrival)).exists?
#     render json: { error: 'Name already exists' }
#   end
# end
def route_params
 params.require(:route).permit(:name,:departure,:arrival)
end
