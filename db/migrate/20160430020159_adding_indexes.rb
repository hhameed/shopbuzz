class AddingIndexes < ActiveRecord::Migration
  def change
    add_index :seller_product_links, :url
    add_index :catalogue_pages, :url
    add_index :products, :name
  end
end
