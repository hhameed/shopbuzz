require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe SellerReviewsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # SellerReview. As you add validations to SellerReview, be sure to
  # adjust the attributes here as well.

  before :each do
    @seller = Seller.new({:id => 1})
    @seller.save(:validate=>false)
  end

  let(:valid_attributes) {
    hash={};
    hash[:rating]=4
    hash[:name]='kiran'
    hash[:content]='abcdef'
    hash[:seller_id]=1
    hash[:email]='fake@email.com'
    return hash
  }

  let(:invalid_attributes) {
    hash={};
    hash[:rating]=4
    hash[:content]='abcdef'
    hash[:seller_id]=1
    hash[:email]='fake@email.com'
    return hash
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SellerReviewsController. Be sure to keep this updated too.
  describe "GET #index" do
    it "assigns all seller_reviews as @seller_reviews" do
      seller_review = SellerReview.create! valid_attributes
      get :index, {:seller_id=>1}
      expect(assigns(:seller_reviews)).to eq([seller_review])
    end
  end

  # describe "GET #show" do
  #   it "assigns the requested seller_review as @seller_review" do
  #     seller_review = SellerReview.create! valid_attributes
  #     get :show, {:id => seller_review.to_param}, valid_session
  #     expect(assigns(:seller_review)).to eq(seller_review)
  #   end
  # end

  describe "GET #new" do
    it "assigns a new seller_review as @seller_review" do
      get :new, {:seller_id=>1}
      expect(assigns(:seller_review)).to be_a_new(SellerReview)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new SellerReview" do
        expect {
          post :create, {:seller_id=>1,:seller_review => valid_attributes}
        }.to change(SellerReview, :count).by(1)
      end

      it "assigns a newly created seller_review as @seller_review" do
        post :create, {:seller_id=>1,:seller_review => valid_attributes}
        expect(assigns(:seller_review)).to be_a(SellerReview)
        expect(assigns(:seller_review)).to be_persisted
      end

      it "redirects to the created seller_review" do
        post :create, {:seller_id=>1,:seller_review => valid_attributes}
        expect(response).to redirect_to(seller_seller_reviews_url)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved seller_review as @seller_review" do
        post :create, {:seller_id=>1,:seller_review => invalid_attributes}
        expect(assigns(:seller_review)).to be_a_new(SellerReview)
      end

      it "re-renders the 'new' template" do
        post :create, {:seller_id=>1,:seller_review => invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end

end
