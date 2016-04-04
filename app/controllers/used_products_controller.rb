class UsedProductsController < ApplicationController

  before_action :set_used_product, only: [:show, :edit, :update, :destroy]
  before_action :set_product, only: [:new, :create, :index]
  # GET /used_products
  def index
    @used_products = UsedProduct.all
  end


  def page_by_category
    @category=Category.find(params[:category_id])
    @used_products= UsedProduct.where(nil)
    @used_products = @used_products.where("category_id = ?",params[:category_id]) if params[:category_id].present?
    #Join UsedProduct and Product relation to get the product id for a given product name.
    @products = Product.joins('JOIN used_products ON products.id = used_products.product_id').where('products.name LIKE ?',"%#{params[:pname]}%") if params[:pname].present?
    x=[]
    if params[:pname].present?
      @products.each do |p|
        x<<p.id
      end
    end
    #
    @used_products = @used_products.search1(x) if params[:pname].present?
    @used_products = @used_products.condition(params[:conditionid]) if params[:conditionid].present?
    @used_products = @used_products.duration(params[:duration]) if params[:duration].present?
    @used_products = @used_products.warranty(params[:warranty]) if params[:warranty].present?
    @used_products = @used_products.city(params[:city]) if params[:city].present?
    str= params[:data1]
    arr=str.try(:split, ",")
     @min=arr[0].to_i if params[:data1].present?
     @max=arr[1].to_i if params[:data1].present?
    #@min= params[:data1].present? ? arr[0].to_i : 100000
    #@max= params[:data1].present? ? arr[1].to_i : 200000
    @used_products = @used_products.slide(@min,@max) if params[:data1].present?
    @used_products = @used_products.page(params[:page]).per(10)
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
    @used_product.category_id=@product.category_id

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
