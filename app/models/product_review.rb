class ProductReview < ActiveRecord::Base
  belongs_to :product
  validates :rating, :name, :content, presence: true
  validates :rating, numericality:{
      only_integer: true,
      less_than_or_equal_to: 5,
      message: "can only be a whole number between 1 and 5"
  }
end
