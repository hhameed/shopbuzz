class City < ActiveRecord::Base
  has_many :used_products
  belongs_to :province
end
