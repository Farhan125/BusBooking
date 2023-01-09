FactoryBot.define do
  factory :confirmed_route do
    bus=Bus.create(bus_no: "Bus-1",total_seats:"5",company_id:"1")
    route=Route.create(name: "ICH-GLBG", departure:"ICH",arrival:"GLBG")

      dep_time {"11:00"}
      arr_time {"02:00"}
      price {"600"}
      date {"05-01-2023"}
      bus_id {'1'}
      route_id {'1'}
  end
end
