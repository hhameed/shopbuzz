class AddCategoryToUsedProducts < ActiveRecord::Migration
  def change
    add_reference :used_products, :category, index: true, foreign_key: true
  end
end
