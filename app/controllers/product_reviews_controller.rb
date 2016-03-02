class ProductReviewsController < ApplicationController

  before_action :set_product_review, only: [:show, :edit, :update, :destroy]
  before_action :set_product

  # GET /product_reviews
  # GET /product_reviews.json

  def index
    @product_reviews = ProductReview.where(product_id: @product.id).paginate(:page => params[:page], :per_page => 30)
  end

  # GET /product_reviews/1
  # GET /product_reviews/1.json

  def show
  end

  # GET /product_reviews/new
  def new
    @product_review = ProductReview.new
  end

  # GET /product_reviews/1/edit
  def edit
  end

  # POST /product_reviews
  # POST /product_reviews.json
  def create
    respond_to do |format|
    if !verify_recaptcha
      format.html { render :'product_reviews/new' }
    end
    end

    @product_review = ProductReview.new(product_review_params)
    @product_review.product_id=@product.id

    respond_to do |format|
      if @product_review.save
        format.html { redirect_to product_product_reviews_url, notice: 'Product review was successfully created.' }
        format.json { render :show, status: :created, location: @product_review }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_reviews/1
  # PATCH/PUT /product_reviews/1.json
  def update
    respond_to do |format|
      if @product_review.update(product_review_params)
        format.html { redirect_to product_product_reviews_url, notice: 'Product review was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_review }
      else
        format.html { render :edit }
        format.json { render json: @product_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_reviews/1
  # DELETE /product_reviews/1.json
  def destroy
    @product_review.destroy
    respond_to do |format|
      format.html { redirect_to product_product_reviews_url, notice: 'Product review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

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
      params.require(:product_review).permit(:rating, :content, :name)
    end
end
