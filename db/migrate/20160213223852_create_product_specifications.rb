class CreateProductSpecifications < ActiveRecord::Migration
  def change
    create_table :product_specifications do |t|
      t.string :value
      t.references :specification, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
