class RemoveProvinceNameFromUsedProducts < ActiveRecord::Migration
  def change
    remove_column :used_products, :province_name, :string
  end
end
