class CreateSellerReviews < ActiveRecord::Migration
  def change
    create_table :seller_reviews do |t|
      t.string :name
      t.string :email
      t.integer :rating
      t.text :content
      t.references :seller, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
