class SellersController < ApplicationController

  before_action :set_seller

  def show
    @sellers = Seller.all
  end

  private
  # Use callbacks to share common setup or constraints between actions.

  def set_seller
    @seller = Seller.find(params[:id])
  end

  def seller_params
    params[:seller]
  end


end