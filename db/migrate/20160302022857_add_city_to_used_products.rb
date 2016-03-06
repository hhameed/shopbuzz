class AddCityToUsedProducts < ActiveRecord::Migration
  def change
    add_reference :used_products, :city, index: true, foreign_key: true
  end
end
