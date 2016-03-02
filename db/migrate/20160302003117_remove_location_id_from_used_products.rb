class RemoveLocationIdFromUsedProducts < ActiveRecord::Migration
  def change
    remove_column :used_products, :Location_id, :integer
  end
end
