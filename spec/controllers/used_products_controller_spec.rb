require 'rails_helper'

RSpec.describe UsedProductsController, type: :controller do

  before :each do
    @product = Product.new({:id => 1,name:'samsung'})
    @product.save(:validate=>false)
    @city = City.new({:id=>1})
    @city.save(:validate=>false)
    @category = Category.new({:id=>1})
    @category.save(:validate=>false)
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
    #hash[:category_id]=1
    return hash
  }

  before :each do
    @usedsamsung = UsedProduct.create(
        name: 'balaji',
        product_id: 1,
        email: 'ff@gmail.com',
        condition_ex:'3',
        price: '500',
        warranty: '1-3 Month Warranty',
        usage_duration: '1=3 Month Used',
        city_id: 1,
        contact_number: '1234567890',
        category_id:1
    )
    @usedapple = UsedProduct.create(
        name: 'rish',
        product_id: 1,
        email: 'fsf@gmail.com',
        condition_ex:'3',
        price: '1000',
        warranty: '1-3 Month Warranty',
        usage_duration: '1=3 Month Used',
        city_id: 1,
        contact_number: '1224567890',
        category_id:1
    )

    #@mobile = Category.create(id:1)
  end




  describe "GET #index" do
    it "assigns all used_products as @used_products" do
      used_product=UsedProduct.create! valid_attributes
      get :index, {:product_id=>1}
      expect(assigns(:used_products)).to eq([@usedsamsung,@usedapple,used_product])
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

  describe 'Post method for page_by_category action' do
    context 'with category and condition params' do
      it "assigns used products according condition of the product " do
        post :page_by_category, {category_id:1 ,condtion_ex:3}
        expect(assigns(:category)).to eq(@category)
        #expect(assigns(:textminvalue)).to eq("500")
        expect(assigns(:used_products)).to eq([@usedsamsung,@usedapple])
      end
    end

    context 'with category and price slider' do
      it "assigns used products according Price slider " do
        post :page_by_category, {category_id:1 ,data1:"400,600"}
        expect(assigns(:category)).to eq(@category)
        #expect(assigns(:textminvalue)).to eq("500")
        expect(assigns(:used_products)).to eq([@usedsamsung])
      end
    end


    context 'with category and name of the product' do
      it "assigns used products according name of the product " do
        post :page_by_category, {category_id:1 ,pname:'samsung'}
        expect(assigns(:category)).to eq(@category)
        expect(assigns(:used_products)).to eq([@usedsamsung,@usedapple])
      end
    end

    end



end
