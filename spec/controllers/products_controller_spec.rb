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
    @spl = SellerProductLink.create(
        {
            id: 1,
            name: 'Samsung Galaxy Note II',
            price: 40699,
            info: '',
            not_found: nil,
            product_id: 1,
            category_id: 4,
            seller_id: 1,
            url: 'http://www.payless.pk/Mobile-n-Accessories/Payless-Mobile-Phones-In-Pakistan/samsung-galaxy-note-ii-n7100-in-pakistan?limit=2000'
        }
    )
  end

  describe "wait page" do
    it 'it should redirect to seller page' do
      get :wait, {spl_id: 1}
      expect(response).to render_template(:wait)
      expect(response).to have_http_status(200)
    end
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
        expect(response).to redirect_to('http://test.host/site/browse?param1=iphone')
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
