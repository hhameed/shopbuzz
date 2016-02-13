class CategorySpecification < ActiveRecord::Base
  belongs_to :category
  belongs_to :specification
end
