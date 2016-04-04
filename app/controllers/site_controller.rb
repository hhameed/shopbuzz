class SiteController < ApplicationController

  def index
    #@products = Product.take(8)
  end

  def browse
     #@products = Product.(page: params[:page], per_page: 5)
     @selected_brands = (params[:brand_ids].present? ? params[:brand_ids] : [])
     @textminvalue=(params[:textmin].present? ? params[:textmin] : "")
     @textmaxvalue=(params[:textmax].present? ? params[:textmax] : "")
     @sortvalue=(params[:sortid].present? ? params[:sortid].to_i : 1)
     @category=Category.find(params[:category_id]) if params[:category_id].present?
     @searchparam=(params[:param1].present? ? params[:param1] : "")
     if !params[:brand_ids].blank?
       x=[]
       params[:brand_ids].each do|i|
         x<<i
       end
     end

      @products = Product.where(nil)
      @products = Product.search(params[:param1]) if params[:param1].present?
      @products = @products.minprice(params[:textmin]) if params[:textmin].present?
      @products = @products.maxprice(params[:textmax]) if params[:textmax].present?
      @products = @products.brands(x) if params[:brand_ids].present?
      @products = @products.category(params[:category_id]) if params[:category_id].present?
      @products = @products.asc if params[:sortid]=="1"
      @products = @products.desc if params[:sortid]=="2"
     # @products = @products.paginate(page: params[:page], per_page: 10)
      @products = @products.page(params[:page]).per(10)



  end

  end
