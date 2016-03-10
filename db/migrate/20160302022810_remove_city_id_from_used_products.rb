class RemoveCityIdFromUsedProducts < ActiveRecord::Migration
  def change
    remove_column :used_products, :city_id, :integer
  end
end
