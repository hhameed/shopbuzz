require 'rails_helper'
require 'spec_helper'


RSpec.describe ProductsController, type: :controller do

  before :each do
    @product = Product.new({:id => 1})
    @product.save(:validate=>false)
  end


  describe "Product Page" do
    it 'shows the specification of particular product ' do
      get :show, {:id=>@product.id}
      expect(assigns(:product)).to eq(@product)
    end
  end


end
