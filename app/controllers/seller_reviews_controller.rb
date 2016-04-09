class SellerReviewsController < InheritedResources::Base
  before_action :set_seller_review, only: [:show, :edit, :update, :destroy]
  before_action :set_seller

  def index
    @seller_reviews = SellerReview.where(seller_id: @seller.id).page(params[:page]).per(30)
  end

  def new
    @seller_review = SellerReview.new
  end


  def create

    @seller_review = SellerReview.new(product_review_params)
    @seller_review.seller_id=@seller.id

    respond_to do |format|
      if verify_recaptcha(model:@seller_review)&& @seller_review.save
        format.html { redirect_to product_product_reviews_url, notice: 'Seller review was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end




  private

  def set_seller_review
    @seller_review = SellerReview.find(params[:id])
  end

  def set_seller
    @seller=Seller.find(params[:seller_id])
  end

    def seller_review_params
      params.require(:seller_review).permit()
    end
end

