class UsedProduct < ActiveRecord::Base
  belongs_to :city
  belongs_to :product
  belongs_to :category

  PRICE_REGEX = /\A\d+\z/

  validates :name, presence: true
  validates :condition_ex, presence: true
  validates :price, presence: true, :format => {:with => PRICE_REGEX}, :numericality => {:greater_than_or_equal_to => 0}
  validates :usage_duration, presence: true
  validates :warranty, presence: true
  validates :contact_number, presence: true
  validates :city_id, presence: true

  EMAIL_REGEX = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  validates :email, :format => {:with => EMAIL_REGEX}, :allow_blank=>true

#scope to add a method for querying objects for filters.
  scope :condition, -> (con) { where("condition_ex = ?", "#{con}")}
  scope :slide, -> (min,max) { where(:price => min..max)}
  scope :city, -> (city) { where("city_id = ?", city)}
  scope :category, -> (cat_id) { where category_id: cat_id }
  scope :brands, -> (x) { where "brand_id IN (?)",x }
  scope :duration, -> (duration) { where("usage_duration= ?", duration)}
  scope :warranty, -> (warranty) { where("warranty= ?", warranty)}
  scope :search1, -> (x) { where "product_id IN (?)",x }


end
