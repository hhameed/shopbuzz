require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  before :each do
    @product = Product.new({:id => 1})
    @product.save(:validate=>false)
  end
  before :each do
    @samsung = Product.create(
        name: 'galaxy',
        price: '500',
        image: 'xyz',
        rating: 5,
        review_count: 10,
        views: 50,
        brand_id: 3,
        category_id:4
    )
    @apple = Product.create(
        name: 'iphone',
        price: '600',
        image: 'xyz',
        rating: 5,
        review_count: 10,
        views: 50,
        brand_id:4,
        category_id:4
    )

    @mobile = Category.create(id:4)
  end


  describe "Product Page" do
    it 'shows the specification of particular product ' do
      get :show, {:id=>@product.id}
      expect(assigns(:product)).to eq(@product)
    end
  end
  describe 'get index' do

    context 'with params[:search]' do
      it 'renders :index template'do
        get :index,search: 'iphone'
        expect(response).to render_template :index
      end
    end
    context 'without params[:search]' do
      it 'renders home template' do
        get :index,search: ''
        expect(response).to redirect_to('http://test.host/')
      end
    end
  end
end
