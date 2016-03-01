class UsedProduct < ActiveRecord::Base
  belongs_to :location
  belongs_to :product
  enum level: [:city, :province ]
end
