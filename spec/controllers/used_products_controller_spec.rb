require 'rails_helper'

RSpec.describe UsedProductsController, type: :controller do

  before :each do
    @product = Product.new({:id => 1})
    @product.save(:validate=>false)
    @city = City.new({:id=>1})
    @city.save(:validate=>false)
  end


  let(:valid_attributes){
    hash={};
    hash[:name]='dengkliu'
    hash[:product_id]=1
    hash[:email]='fake@email.com'
    hash[:condition_ex]='3'
    hash[:price]=10000
    hash[:warranty]='1-3 Month Warranty'
    hash[:usage_duration]='1=3 Month Used'
    hash[:city_id]=1
    hash[:contact_number]='3195121585'
    return hash
  }

  describe "GET #index" do
    it "assigns all used_products as @used_products" do
      used_product=UsedProduct.create! valid_attributes
      get :index, {:product_id=>1}
      expect(assigns(:used_products)).to eq([used_product])
    end
  end

  describe "GET #new" do
    it "assigns a new used_product as @used_product" do
      get :new, {:product_id=>1}
      expect(assigns(:used_product)).to be_a_new(UsedProduct)
    end
  end

  describe "POST #create" do
    it "creates a new UsedProduct" do
      expect {
        post :create, {:product_id=>1, :used_product => valid_attributes}
      }.to change(UsedProduct, :count).by(1)
    end

    it "assigns a newly created used_product as @used_product" do
      post :create, {:product_id=>1, :used_product => valid_attributes}
      expect(assigns(:used_product)).to be_a(UsedProduct)
      expect(assigns(:used_product)).to be_persisted
    end

    it "redirects to the created used_product" do
      post :create, {:product_id=>1, :used_product => valid_attributes}
      expect(response).to redirect_to(product_used_products_url)
    end
  end

end
