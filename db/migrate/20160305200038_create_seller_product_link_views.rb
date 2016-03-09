class CreateSellerProductLinkViews < ActiveRecord::Migration
  def change
    create_table :seller_product_link_views do |t|
      t.string :ip
      t.timestamp :accessed
      t.references :seller_product_link, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
