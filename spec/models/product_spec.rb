require 'rails_helper'


RSpec.describe Product, type: :model do

  before :each do
    @samsung = Product.create(
        id: 1,
        name: 'galaxy',
        price: '500',
        image: 'xyz',
        rating: 5,
        review_count: 2,
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
  end

  describe "filter product by price" do

  context "price greater than minimum" do
    it "returns a array of products greater than minimum price" do
      expect(Product.minprice(500)).to eq [@samsung, @apple] end
  end

  context "with non matching minimum price" do
    it "omits results that do not match" do
    expect(Product.minprice(600)).not_to include @samsung
    end
  end

  context "price less than maximum" do
    it "returns a array of products lesser than maximum price" do
      expect(Product.maxprice(600)).to eq [@samsung, @apple] end
  end

  context "with non matching maximum price" do
    it "omits results that do not match" do
      expect(Product.maxprice(500)).not_to include @apple
    end
  end

  end


  describe "filter product by brand_id" do

    context "Product with some brand_id selected" do
      it "returns a array of products with the selected brand_id" do
        expect(Product.brands([3,4])).to eq [@samsung, @apple] end
    end

    context "with non matching brand_id" do
      it "omits results that do not match" do
        expect(Product.brands([3])).not_to include @apple
      end
    end

  end


  describe "filter product by category_id" do

    context "Product with a category_id selected" do
      it "returns a array of products with the selected category_id" do
        expect(Product.category(4)).to eq [@samsung, @apple] end
    end

    context "with non matching category_id" do
      it "omits results that do not match" do
        expect(Product.category(3)).to eq []
      end
    end

  end
  it "returns searched products for correct input" do

    product2= Product.create(
        id: "8",
        rating: "4",
        name: "Samsung Galaxy Y",
        category_id: "4"
    )
    product3= Product.create(
        id: "3",
        rating: "3",
        name: "Apple iphone",
        category_id: "4"
    )
    expect(Product.search("Sam")).to eq [product2]
  end
  it "returns searched products for empty input" do
    product1= Product.create(
        id: "6",
        rating: "4",
        name: "Samsung Galaxy Ace II",
        category_id: "4"
    )
    product2= Product.create(
        id: "7",
        rating: "5",
        name: "Samsung Galaxy ABC",
        category_id: "4"
    )
    product3= Product.create(
        id: "3",
        rating: "3",
        name: "Apple iphone",
        category_id: "4"
    )
    expect(Product.search("")).to eq [@samsung,@apple,product3,product1,product2]
  end

  describe "get average rating for product" do
    it 'assign the average rating to the rating of the product' do
      @samsung_review1= ProductReview.create!(
          name: 'Tony',
          email: '',
          rating: 4,
          product_id: 1,
          content: 'abc'
      )

      @samsung_review2 = ProductReview.create!(
          name: 'Kiran',
          email: '',
          rating: 3,
          product_id: 1,
          content: 'abc'
      )

      product=Product.find(1).avg_rating()

      expect(product).to eq(3.5)

    end
  end

end


