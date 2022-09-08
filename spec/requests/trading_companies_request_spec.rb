require 'rails_helper'

RSpec.describe "TradingCompanies", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/trading_companies/index"
      expect(response).to have_http_status(:success)
    end
  end

end
