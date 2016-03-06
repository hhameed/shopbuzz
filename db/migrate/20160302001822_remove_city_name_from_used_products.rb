class RemoveCityNameFromUsedProducts < ActiveRecord::Migration
  def change
    remove_column :used_products, :city_name, :string
  end
end
