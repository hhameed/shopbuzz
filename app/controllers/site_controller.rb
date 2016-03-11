class SiteController < ApplicationController

  def index
    @products = Product.take(8)
  end

  def browse
    #@products = Product.(page: params[:page], per_page: 5)
    @products = Product.where(params.permit(:category_id)).paginate(page: params[:page], per_page: 10)

  end

end
