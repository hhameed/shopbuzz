class ProductReviewsController < ApplicationController

  before_action :set_product_review, only: [:show, :edit, :update, :destroy]
  before_action :set_product

  def index
    @product_reviews = ProductReview.where(product_id: @product.id).paginate(:page => params[:page], :per_page => 30)
  end

  # The show page for food reviews is useless currently
  # def show
  # end

  def new
    @product_review = ProductReview.new
  end


  # def edit
  # end

  def create

    @product_review = ProductReview.new(product_review_params)
    @product_review.product_id=@product.id

    respond_to do |format|
      if verify_recaptcha(model:@product_review)&& @product_review.save
        format.html { redirect_to product_product_reviews_url, notice: 'Product review was successfully created.' }
      else
         format.html { render :new }
      end
    end
  end


  # def update
  #  respond_to do |format|
  #    if @product_review.update(product_review_params)
  #      format.html { redirect_to product_product_reviews_url, notice: 'Product review was successfully updated.' }
  #    else
  #      format.html { render :edit }
  #    end
  #  end
  # end

  # def destroy
  #  @product_review.destroy
  #  respond_to do |format|
  #    format.html { redirect_to product_product_reviews_url, notice: 'Product review was successfully destroyed.' }
  #  end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_review
      @product_review = ProductReview.find(params[:id])
    end

    def set_product
      @product=Product.find(params[:product_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_review_params
      params.require(:product_review).permit(:rating, :content, :name, :email)
    end
end
