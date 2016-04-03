class Category < ActiveRecord::Base
  has_many :product
  has_many :used_product
  has_and_belongs_to_many :specification
end
