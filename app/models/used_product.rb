class UsedProduct < ActiveRecord::Base
  belongs_to :city
  belongs_to :province
  belongs_to :product

  validates :name, presence: true
  validates :condition_ex, presence: true
  validates :price, presence: true
  validates :usage_duration, presence: true
  validates :contact_number, presence: true
  validates :city_name, presence: true
  validates :province_name, presence: true
  validates :contact_number, presence: true

  EMAIL_REGEX = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :email, :format => {:with => EMAIL_REGEX}, :uniqueness => {case_sensitive:false}, :allow_blank=>true

end
