require 'rails_helper'

RSpec.describe Booking, type: :model do
  context 'when creating Booking' do
    let(:booking) {build :booking}
    it 'created boooking' do
  
      expect(booking).to be_valid 
    end
   end
end
