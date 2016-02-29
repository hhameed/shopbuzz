class Location < ActiveRecord::Base
  belongs_to :location
  has_many :locations
end
