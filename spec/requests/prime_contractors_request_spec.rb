require 'rails_helper'

RSpec.describe "PrimeContractors", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/prime_contractors/index"
      expect(response).to have_http_status(:success)
    end
  end

end
