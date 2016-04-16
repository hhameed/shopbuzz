require 'rails_helper'

include Devise::TestHelpers

RSpec.describe Admin::UsedProductsController, type: :controller do
  let(:admin_user) { AdminUser.create!(email: 'admin@example.com', password: 'password')}
  before(:each) do
    sign_in admin_user
  end

  render_views

  describe "GET UsedProductindex" do
    it "assigns usedproduct" do
      usedp = UsedProduct.create(name:'H',price:'1000')
      get :index
      expect(assigns(:usedproducts)).to eq(nil)
    end
  end
end