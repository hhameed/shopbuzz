class Province < ActiveRecord::Base
  has_many :cities
  has_many :used_products
end
