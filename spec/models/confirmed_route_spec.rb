require 'rails_helper'

RSpec.describe ConfirmedRoute, type: :model do
  context 'when creating confirmed Route' do
    let(:confirmed_route) {build :confirmed_route}
    it 'created Confirmed Route' do
  
      expect(confirmed_route).to be_valid 
    end
   end
end
