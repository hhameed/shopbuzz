class UsedProduct < ActiveRecord::Base
  belongs_to :city
  belongs_to :province
  belongs_to :product

  PRICE_REGEX = /\A\d+\z/

  validates :name, presence: true
  validates :condition_ex, presence: true
  validates :price, presence: true, :format => {:with => PRICE_REGEX}, :numericality => {:greater_than_or_equal_to => 0}
  validates :usage_duration, presence: true
  validates :warranty, presence: true
  validates :contact_number, presence: true
  validates :city_id, presence: true

  EMAIL_REGEX = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :email, :format => {:with => EMAIL_REGEX}, :uniqueness => {case_sensitive:false}, :allow_blank=>true

end
