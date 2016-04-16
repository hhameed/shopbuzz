require 'rails_helper'

include Devise::TestHelpers

RSpec.describe Admin::DashboardController, type: :controller do
  let(:admin_user) { AdminUser.create!(email: 'admin@example.com', password: 'password')}
  before(:each) do
    sign_in admin_user
  end

  render_views

  describe "GET products index" do
    it "assigns email" do
      product = Product.create(id:'1',name:'Sony ABC',price:'1472631')
      get :index
      expect(assigns(:products)).to eq(nil)
    end
  end
  describe "GET usedproducts index" do
    it "assigns email" do
      products = UsedProduct.create(id:'1',name:'Balaji',price:'1472631')
      get :index
      expect(assigns(:used_products)).to eq(nil)
    end
  end

end