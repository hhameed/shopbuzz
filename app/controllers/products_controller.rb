class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  autocomplete :product, :name, :full => true

  def index
    #taking values from the parameter of the item which is to be searched if params is blank return to homepage

    if params[:search].blank?
      redirect_to root_path
    else
      #taking values from the parameter of the item which is to be searched if params is not blank call search function in model
      @products = Product.search(params[:search])
      redirect_to url_for(:controller => :site, :action => :browse , param1: params[:search])
    end
  end

  def show
    @products = Product.all
  end

  # GET /products/new
  # def new
  #   @product = Product.new
  # end
  #
  #
  # # GET /products/1/edit
  # def edit
  # end

  # POST /products
  # POST /products.json
  # def create
  #   @product = Product.new(product_params)
  #
  #   respond_to do |format|
  #     if @product.save
  #       format.html { redirect_to @product, notice: 'Product was successfully created.' }
  #
  #     else
  #       format.html { render :new }
  #
  #     end
  #   end
  # end

  def wait
    @spl = SellerProductLink.find(params[:spl_id])
    @product = @spl.product
  end

  # # PATCH/PUT /products/1
  # # PATCH/PUT /products/1.json
  # def update
  #   respond_to do |format|
  #     if @product.update(product_params)
  #       format.html { redirect_to @product, notice: 'Product was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @product }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @product.errors, status: :unprocessable_entity }
  #     end
  #   end
  # # end

  # DELETE /products/1
  # DELETE /products/1.json
  # def destroy
  #   @product.destroy
  #   respond_to do |format|
  #     format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.


    # def product_params
    #   params[:product]
    # end

end
