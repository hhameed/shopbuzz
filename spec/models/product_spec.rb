require 'rails_helper'

RSpec.describe Product, type: :model do

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






end

