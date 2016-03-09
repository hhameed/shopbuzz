require 'rails_helper'

RSpec.describe "UsedProducts", type: :request do
  describe "GET /used_products" do
    it "works! (now write some real specs)" do
      get used_products_path
      expect(response).to have_http_status(200)
    end
  end
end
