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
     @category=Category.find(params[:category_id])
  #
  #   if params[:brand_ids].blank? && params[:textmin].blank? && params[:textmax].blank?&&params[:sortid].blank?
  #     @products = Product.where(params.permit(:category_id)).paginate(page: params[:page], per_page: 10)
  #   end
  #
  #   #only brand
  #    if !params[:brand_ids].blank?&&params[:textmin].blank?&&params[:textmax].blank?
  #      x=[]
  #      params[:brand_ids].each do|i|
  #        x<<i
  #      end
  #      hash = params.permit(:category_id)
  #
  #      hash[:brand_id]=x
  #      print hash
  #      @products = Product.where(hash).paginate(page: params[:page], per_page: 10)
  #    end
  #
  #   #only min value
  #    if !params[:textmin].blank? && params[:textmax].blank? && params[:brand_ids].blank?
  #
  #        catid = params[:category_id]
  #        min=params[:textmin].to_i
  #        @products = Product.where("category_id = ? AND price >= ?",catid, min).paginate(page: params[:page], per_page: 10)
  #    end
  #
  #   #only max value
  #    if !params[:textmax].blank? && params[:textmin].blank? && params[:brand_ids].blank?
  #
  #      catid = params[:category_id]
  #      max=params[:textmax].to_i
  #      @products = Product.where("category_id = ? AND price <= ?",catid, max).paginate(page: params[:page], per_page: 10)
  #    end
  #
  #   #only sortid
  #   if params[:brand_ids].blank? && params[:textmin].blank? && params[:textmax].blank?&&params[:sortid].present?
  #     if params[:sortid]=="1"
  #       @products =Product.where(params.permit(:category_id)).order(price: :asc).paginate(page: params[:page], per_page: 10)
  #     else
  #       @products =Product.where(params.permit(:category_id)).order(price: :desc).paginate(page: params[:page], per_page: 10)
  #     end
  #   end
  #
  #   #only min and max
  #    if (!params[:textmax].blank?) && (!params[:textmin].blank?) && params[:brand_ids].blank?
  #
  #      catid = params[:category_id]
  #      min=params[:textmin].to_i
  #      max=params[:textmax].to_i
  #      @products = Product.where("category_id = ? AND price >= ? AND  price <= ?",catid,min,max).paginate(page: params[:page], per_page: 10)
  #    end
  #
  #   #brand and textmin
  #   if !params[:brand_ids].blank? && !params[:textmin].blank? && params[:textmax].blank?
  #     x=[]
  #     params[:brand_ids].each do|i|
  #       x<<i
  #     end
  #     catid = params[:category_id]
  #     min=params[:textmin].to_i
  #     @products = Product.where("category_id = ? AND price >= ? AND brand_id IN (?)",catid, min,x).paginate(page: params[:page], per_page: 10)
  #   end
  #
  #   #brand textmax
  #   if !params[:brand_ids].blank? && !params[:textmax].blank? && params[:textmin].blank?
  #     x=[]
  #     params[:brand_ids].each do|i|
  #       x<<i
  #     end
  #     catid = params[:category_id]
  #     max=params[:textmax].to_i
  #     @products = Product.where("category_id = ? AND price <= ? AND brand_id IN (?)",catid, max,x).paginate(page: params[:page], per_page: 10)
  #   end
  #
  #   #brand and min and max
  #   if (!params[:textmax].blank?) && (!params[:textmin].blank?) && !params[:brand_ids].blank?
  #     x=[]
  #     params[:brand_ids].each do|i|
  #       x<<i
  #     end
  #     catid = params[:category_id]
  #     min=params[:textmin].to_i
  #     max=params[:textmax].to_i
  #
  #     @products = Product.where("category_id = ? AND price >= ? AND  price <= ? AND brand_id IN (?)",catid,min,max,x).paginate(page: params[:page], per_page: 10)
  #   end
  #
  #   #sort and brand is present
  #   if params[:sortid].present? && params[:brand_ids].present? && params[:textmax].blank? && params[:textmin].blank?
  #     x=[]
  #     params[:brand_ids].each do|i|
  #       x<<i
  #     end
  #     catid = params[:category_id]
  #
  #     if params[:sortid]=="1"
  #       @products =Product.where("category_id = ? AND brand_id IN (?)",catid,x).order(price: :asc).paginate(page: params[:page], per_page: 10)
  #     else
  #       @products =Product.where("category_id = ? AND brand_id IN (?)",catid,x).order(price: :desc).paginate(page: params[:page], per_page: 10)
  #     end
  #   end
  #
  #   #sort and min value
  #   if params[:textmax].blank? && !params[:textmin].blank? && params[:brand_ids].blank? && params[:sortid].present?
  #
  #     catid = params[:category_id]
  #     min=params[:textmin].to_i
  #     if params[:sortid]=="1"
  #       @products =Product.where("category_id = ? AND price >= ?",catid,min).order(price: :asc).paginate(page: params[:page], per_page: 10)
  #     else
  #       @products =Product.where("category_id = ? AND price >= ?",catid,min).order(price: :desc).paginate(page: params[:page], per_page: 10)
  #     end
  #   end
  #
  #   #sort and max value
  #   if params[:textmin].blank? && !params[:textmax].blank? && params[:brand_ids].blank? && params[:sortid].present?
  #
  #     catid = params[:category_id]
  #     max=params[:textmax].to_i
  #     if params[:sortid]=="1"
  #       @products =Product.where("category_id = ? AND price <= ?",catid,max).order(price: :asc).paginate(page: params[:page], per_page: 10)
  #     else
  #       @products =Product.where("category_id = ? AND price <= ?",catid,max).order(price: :desc).paginate(page: params[:page], per_page: 10)
  #     end
  #   end
  #
  # #sort with min and max
  #   if !params[:textmin].blank? && !params[:textmax].blank? && params[:brand_ids].blank? && params[:sortid].present?
  #       catid = params[:category_id]
  #       max=params[:textmax].to_i
  #       min=params[:textmin].to_i
  #       if params[:sortid]=="1"
  #         @products =Product.where("category_id = ? AND price >= ? AND  price <= ?",catid,min,max).order(price: :asc).paginate(page: params[:page], per_page: 10)
  #     else
  #         @products =Product.where("category_id = ? AND price >= ? AND  price <= ?",catid,min,max).order(price: :desc).paginate(page: params[:page], per_page: 10)
  #     end
  #   end
  #
  #   #sort min and brand
  #   if params[:sortid].present? && params[:brand_ids].present? && params[:textmax].blank? && !params[:textmin].blank?
  #     x=[]
  #     params[:brand_ids].each do|i|
  #       x<<i
  #     end
  #     catid = params[:category_id]
  #     min=params[:textmin].to_i
  #     if params[:sortid]=="1"
  #       @products =Product.where("category_id = ? AND price >= ? AND brand_id IN (?)",catid,min,x).order(price: :asc).paginate(page: params[:page], per_page: 10)
  #     else
  #       @products =Product.where("category_id = ? AND price >= ? AND brand_id IN (?)",catid,min,x).order(price: :desc).paginate(page: params[:page], per_page: 10)
  #     end
  #   end
  #
  #   #sort max and brand
  #   if params[:sortid].present? && params[:brand_ids].present? && !params[:textmax].blank? && params[:textmin].blank?
  #     x=[]
  #     params[:brand_ids].each do|i|
  #       x<<i
  #     end
  #     catid = params[:category_id]
  #     max=params[:textmax].to_i
  #     if params[:sortid]=="1"
  #       @products =Product.where("category_id = ? AND price <= ? AND brand_id IN (?)",catid,max,x).order(price: :asc).paginate(page: params[:page], per_page: 10)
  #     else
  #       @products =Product.where("category_id = ? AND price <= ? AND brand_id IN (?)",catid,max,x).order(price: :desc).paginate(page: params[:page], per_page: 10)
  #     end
  #   end
  #
  #
  #
  #   #everything is present
  #   if !params[:textmax].blank? && !params[:textmin].blank? && !params[:brand_ids].blank? && !params[:sortid].blank?
  #     x=[]
  #     params[:brand_ids].each do|i|
  #       x<<i
  #     end
  #     catid = params[:category_id]
  #     min=params[:textmin].to_i
  #     max=params[:textmax].to_i
  #     print x
  #     if params[:sortid]=="1"
  #       @products =Product.where("category_id = ? AND price >= ? AND  price <= ? AND brand_id IN (?)",catid,min,max,x).order(price: :asc).paginate(page: params[:page], per_page: 10)
  #     else
  #       @products =Product.where("category_id = ? AND price >= ? AND  price <= ? AND brand_id IN (?)",catid,min,max,x).order(price: :desc).paginate(page: params[:page], per_page: 10)
  #     end
  #   end
  #


     # if params[:brand_ids].blank? && params[:textmin].blank? && params[:textmax].blank?&&params[:sortid].blank?
     #        @products = Product.where(params.permit(:category_id)).paginate(page: params[:page], per_page: 10)
     # end

     if !params[:brand_ids].blank?
       x=[]
       params[:brand_ids].each do|i|
         x<<i
       end
     end

      @products = Product.where(nil)
      @products = @products.minprice(params[:textmin]) if params[:textmin].present?
      @products = @products.maxprice(params[:textmax]) if params[:textmax].present?
      @products = @products.brands(x) if params[:brand_ids].present?
      @products = @products.category(params[:category_id]) if params[:category_id].present?
      #@products = @products.asc if params[:sort_id]=="1"
      #@products = @products.desc if params[:sort_id]=="2"
     order = 'products.id asc'
     order = 'products.price asc' if params[:sort_id]=="1"
     order = 'products.price desc' if params[:sort_id]=="2"
     @products = @products.paginate(page: params[:page], per_page: 10)



  end

  end
