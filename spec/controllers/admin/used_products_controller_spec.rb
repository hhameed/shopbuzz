require 'rails_helper'

include Devise::TestHelpers

RSpec.describe Admin::UsedProductsController, type: :controller do
  let(:admin_user) { AdminUser.create!(email: 'admin@example.com', password: 'password')}

  before(:each) do
    sign_in admin_user
  end

  describe "GET index" do
    it "all attributes" do
      usedp = UsedProduct.create(id:'1',name:'abcd',price:"5000",condition_ex:"1")
      get :index
      expect(assigns(:usedproducts)).to eq(nil)
    end
  end

  render_views

  let(:admin_user) { AdminUser.create!(email: 'admin@example.com', password: 'password')}
end