class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :category
  has_many :product_specification
  has_many :specification, through: :product_specification
  has_many :product_review
  has_many :used_products

  has_many :seller_product_links



  scope :minprice, -> (min) { where("price >= ?", "#{min}")}
  scope :maxprice, -> (max) { where("price <= ?", max)}
  scope :category, -> (cat_id) { where category_id: cat_id }
  scope :brands, -> (x) { where "brand_id IN (?)",x }
  scope :asc, -> () {reorder('price ASC')}
  scope :desc, -> () {reorder('price DESC')}

  def avg_rating
    ProductReview.where(:product_id=>self.id).average(:rating)
  end

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    end
  end

end
