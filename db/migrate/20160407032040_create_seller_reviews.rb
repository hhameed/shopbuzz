class CreateSellerReviews < ActiveRecord::Migration
  def change
    create_table :seller_reviews do |t|

      t.timestamps null: false
    end
  end
end
