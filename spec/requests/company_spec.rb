require 'rails_helper'

RSpec.describe "CompaniesCOntroller", type: :request do
  describe "GET companies/show" do
  get companies/show
  expect(response).to have_http_status(200) 
  
  end
end
