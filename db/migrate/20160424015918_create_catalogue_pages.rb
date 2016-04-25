class CreateCataloguePages < ActiveRecord::Migration
  def change
    create_table :catalogue_pages do |t|
      t.string :url
      t.references :category_seller_page, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
