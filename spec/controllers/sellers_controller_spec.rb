require 'rails_helper'

RSpec.describe SellersController, type: :controller do

  before :each do
    @product = Product.new({:id => 1})
    @product.save(:validate=>false)
    @seller = Seller.new({:id => 1})
    @seller.save(:validate=>false)
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
    @mobile = Category.create(id:4)
  end



  describe "Seller Page" do
    it 'shows the information of particular seller ' do
      get :show, {:id=>@seller.id}
      expect(assigns(:seller)).to eq(@seller)
    end
  end

end