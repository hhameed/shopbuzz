class UsedProductsController < ApplicationController

  before_action :set_used_product, only: [:show, :edit, :update, :destroy]
  before_action :set_product

  # GET /used_products
  def index
    @used_products = UsedProduct.all
  end

  # GET /used_products/1
  # def show
  # end

  # GET /used_products/new
  def new
    @used_product = UsedProduct.new
  end

  # GET /used_products/1/edit
  # def edit
  # end

  # POST /used_products
  def create
    @used_product = UsedProduct.new(used_product_params)
    @used_product.product_id=@product.id

    respond_to do |format|
      if @used_product.save
        format.html { redirect_to product_used_products_url, :flash=>{notice: 'Used product was successfully created.'}}
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /used_products/1
  # def update
  #  respond_to do |format|
  #    if @used_product.update(used_product_params)
  #      format.html { redirect_to @used_product, notice: 'Used product was successfully updated.' }
  #    else
  #      format.html { render :edit }
  #    end
  #  end
  # end

  # DELETE /used_products/1
  # def destroy
  #  @used_product.destroy
  #  respond_to do |format|
  #    format.html { redirect_to used_products_url, notice: 'Used product was successfully destroyed.' }
  #  end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product=Product.find(params[:product_id])
    end

    def set_used_product
      @used_product = UsedProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def used_product_params
      params.require(:used_product).permit(:name, :condition_ex, :price, :additional_info, :warranty, :usage_duration, :contact_number, :city_id, :email)
    end
end
