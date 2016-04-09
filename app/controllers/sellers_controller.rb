class SellersController < ApplicationController
  def show
    @sellers = Seller.all
  end
end