class Product < ActiveRecord::Base
  belongs_to :brand
  belongs_to :category
  has_many :product_specification
  has_many :specification, through: :product_specification
  has_many :product_review
  has_many :used_products
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
