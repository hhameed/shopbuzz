class SellerProductLink < ActiveRecord::Base
  belongs_to :product
  belongs_to :category
  belongs_to :seller
end
