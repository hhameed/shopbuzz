class ProductReview < ActiveRecord::Base
  belongs_to :product

  EMAIL_REGEX = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

  validates :rating, :name, :content, presence: true
  validates :email, :format => {:with => EMAIL_REGEX}, :uniqueness => {case_sensitive:false}

end
