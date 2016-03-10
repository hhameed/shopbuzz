class CreateSellerProductLinks < ActiveRecord::Migration
  def change
    create_table :seller_product_links do |t|
      t.string :name
      t.integer :price
      t.string :url
      t.string :info
      t.timestamp :not_found
      t.references :product, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.references :seller, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
