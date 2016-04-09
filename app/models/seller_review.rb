class SellerReview < ActiveRecord::Base
  belongs_to :seller

  EMAIL_REGEX = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/

  validates :rating, :name, :content, presence: true
  validates :email, :format => {:with => EMAIL_REGEX}, :uniqueness => {case_sensitive:false}, :allow_blank=>true
end
