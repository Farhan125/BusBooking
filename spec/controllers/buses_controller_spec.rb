require 'rails_helper'

RSpec.describe BusesController do
  describe 'POST create' do
  let(:bus) {build :bus}  
  #let(:bus_params) {build :bus_no "bus-1" :total_seats "5" :company_id "1"}
  it 'creates bus' do 
    bus= Bus.create
     post :create

    expect(bus).to be_valid 
   #expect(assigns(:buses)).to eq ([@bus])
   end
 end


 path 'bueses#show' do
  let(:bus) {build :bus}  
  it 'shows bus' do 
    bus= Bus.all
    get :show
    expect(bus).to be_valid
   end
 end

end