class RemoveLocationIdFromUsedProducts < ActiveRecord::Migration
  def change
    remove_column :used_products, :location_id, :integer
  end
end
