require 'rails_helper'

RSpec.describe ProductReviewsController, type: :controller do

  before :each do
    @product = Product.new({:id => 1})
    @product.save(:validate=>false)
  end

  let(:valid_attributes){
    hash={};
    hash[:rating]=3
    hash[:name]='dengkliu'
    hash[:content]='a'
    hash[:product_id]=1
    hash[:email]='fake@email.com'
    return hash
  }

  describe "GET #index" do
    it 'assigns all product reviews as @product_reviews' do
      product_review=ProductReview.create! valid_attributes
      get :index, {:product_id=>1}
      expect(assigns(:product_reviews)).to eq([product_review])
    end
  end

  describe "GET #new" do
    it 'assigns a new product_review as @product_review' do
      get :new, {:product_id=>1}
      expect(assigns(:product_review)).to be_a_new(ProductReview)
    end
  end

  describe "POST #create" do
    it 'creates a new ProductReview' do
      expect{
        post :create, {:product_id=>1, :product_review=>valid_attributes}
      }.to change(ProductReview, :count).by(1)
    end

    it 'assigns a newly created product_review as @product_review' do
      post :create, {:product_id=>1, :product_review => valid_attributes}
      expect(assigns(:product_review)).to be_a(ProductReview)
      expect(assigns(:product_review)).to be_persisted
    end

    it "redirects to the product review index page" do
      post :create, {:product_id=>1, :product_review => valid_attributes}
      expect(response).to redirect_to(product_product_reviews_url)
    end
  end

end
