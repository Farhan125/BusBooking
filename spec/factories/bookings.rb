FactoryBot.define do
  factory :booking do
   
    #bus=Bus.create(bus_no: "Bus-1",total_seats:"5",company_id:"1")
    #route=Route.create(name: "ICH-GLBG", departure:"ICH",arrival:"GLBG")
    confirmed_route=ConfirmedRoute.create(date:"1-1-2023",arr_time:"11:00",dep_time:"02:00",price: "600",bus_id:"1",route_id:"1")
      user_name {"Ahsan"}
      user_email {"Thursday@gmail.com"}
      user_cnic {"123456"}
      seat_no {"1"}
      confirmed_route_id {"1"}

   end
end
