class CreateUsedProducts < ActiveRecord::Migration
  def change
    create_table :used_products do |t|
      t.string :name
      t.integer :condition_ex
      t.integer :price
      t.text :additional_info
      t.string :warranty
      t.string :usage_duration
      t.string :contact_number
      t.string :city_name
      t.string :province_name
      t.string :email
      t.references :location, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
