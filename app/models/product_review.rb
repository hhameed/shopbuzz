class ProductReview < ActiveRecord::Base
  belongs_to :product
  validates :rating, :name, :content, presence: true
end
