class UsedProductsController < ApplicationController
  before_action :set_used_product, only: [:show, :edit, :update, :destroy]

  # GET /used_products
  # GET /used_products.json
  def index
    @used_products = UsedProduct.all
  end

  # GET /used_products/1
  # GET /used_products/1.json
  def show
  end

  # GET /used_products/new
  def new
    @used_product = UsedProduct.new
  end

  # GET /used_products/1/edit
  def edit
  end

  # POST /used_products
  # POST /used_products.json
  def create
    @used_product = UsedProduct.new(used_product_params)

    respond_to do |format|
      if @used_product.save
        format.html { redirect_to @used_product, notice: 'Used product was successfully created.' }
        format.json { render :show, status: :created, location: @used_product }
      else
        format.html { render :new }
        format.json { render json: @used_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /used_products/1
  # PATCH/PUT /used_products/1.json
  def update
    respond_to do |format|
      if @used_product.update(used_product_params)
        format.html { redirect_to @used_product, notice: 'Used product was successfully updated.' }
        format.json { render :show, status: :ok, location: @used_product }
      else
        format.html { render :edit }
        format.json { render json: @used_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /used_products/1
  # DELETE /used_products/1.json
  def destroy
    @used_product.destroy
    respond_to do |format|
      format.html { redirect_to used_products_url, notice: 'Used product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_used_product
      @used_product = UsedProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def used_product_params
      params.fetch(:used_product, {})
    end
end
