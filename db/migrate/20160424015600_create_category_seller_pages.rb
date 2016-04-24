class CreateCategorySellerPages < ActiveRecord::Migration
  def change
    create_table :category_seller_pages do |t|
      t.string :url
      t.references :category, index: true, foreign_key: true
      t.references :seller, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
