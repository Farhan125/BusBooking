require 'rails_helper'

RSpec.describe Bus, type: :model do
  context 'when creating bus' do
  let(:bus) {build :bus}
  it 'created bus' do

    expect(bus).to be_valid 
  end
 end
end
