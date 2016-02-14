class ProductSpecification < ActiveRecord::Base
  belongs_to :specification
  belongs_to :product
end
