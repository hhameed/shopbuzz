class SiteController < ApplicationController

  def index
    @products = Product.take(8)
  end

  def browse
    @products = Product.paginate(page: params[:page], per_page: 5)
  end

end