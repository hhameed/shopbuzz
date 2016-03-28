require 'rails_helper'

RSpec.describe ComparesController, type: :feature do

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
descibe "compare" do
  it "compares two different products" do
     
  end
end


end