class Specification < ActiveRecord::Base
  has_and_belongs_to_many :category
  has_many :product_specification
  has_many :product, through: :product_specification
end
