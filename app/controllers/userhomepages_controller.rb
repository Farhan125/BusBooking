class UserhomepagesController < ApplicationController
  def search
    $route = Route.find(params[:confirmed_route][:route_id])
          .confirmed_routes
          .where(date: params[:confirmed_route][:date])
         redirect_to '/userhomepages/showsearch'
  end
  def showsearch
   if $route.present?
   else
    flash.alert="No Record Found."
    redirect_to '/userhomepages/show'
   end
  end

  def show
  end
  
  def book
  end
 
end

private
def user_params
  params.require(:userhomepage).permit(:service,:departure,:arrival,:date)
end