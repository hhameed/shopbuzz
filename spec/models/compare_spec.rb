require 'rails_helper'

RSpec.describe Compare, type: :model do
  before :each do
    @samsung = Product.create(
        id: '1',
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
        id: '2',

        name: 'iphone',
        price: '600',
        image: 'xyz',
        rating: 5,
        review_count: 10,
        views: 50,
        brand_id:4,
        category_id:4
    )
    @sony = Product.create(
        id: '3',
        name: 'sony alpha',
        price: '6000',
        image: 'abcz',
        rating: 5,
        review_count: 10,
        views: 50,
        brand_id:3,
        category_id:5
    )


    @mobile = Category.create(id:4)
  end
  context "calling hash function" do
    it "should give hash as return" do
      expect(Compare.create_spec_hash(@samsung,@apple)).to eq []
    end
  end
end
