require 'rails_helper'

RSpec.describe SiteController, type: :controller do

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

  describe 'GET #index' do
    context 'with 8 products to be displayed for each category' do
      it "renders the :index template" do
        get :index
        expect(response).to render_template :index
      end

    end

  end


  describe 'Post method for browse action' do
    context 'with category and textmin params' do
      it "assigns products with filterted minimum value" do
        post :browse, {category_id:4 ,textmin: 500}
        expect(assigns(:category)).to eq(@mobile)
        expect(assigns(:textminvalue)).to eq("500")
        expect(assigns(:products)).to eq([@samsung, @apple])
      end

      # it "redirects to the browse page" do
      #   post :browse, {category_id:4 ,textmin: 500}
      #   expect(response).to
      # end

    end


    context 'with category and brand params' do
      it "assigns products with filterted minimum value" do
        post :browse, {category_id:4 ,brand_ids: [3]}
        expect(assigns(:category)).to eq(@mobile)
        expect(assigns(:products)).to eq([@samsung])
      end

    end


    context 'with category and textmax params' do
      it "assigns products with filterted minimum value" do
        post :browse, {category_id:4 ,textmax: 500}
        expect(assigns(:category)).to eq(@mobile)
        expect(assigns(:products)).to eq([@samsung])
      end
    end


    context 'with category and textmax params' do
      it "assigns products with filterted minimum value" do
        post :browse, {category_id:4 ,textmax: 600,brand_ids: [3],textmin: 500}
        expect(assigns(:category)).to eq(@mobile)
        expect(assigns(:products)).to eq([@samsung])
      end
    end


  end






end
