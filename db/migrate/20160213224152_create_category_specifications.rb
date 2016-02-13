class CreateCategorySpecifications < ActiveRecord::Migration
  def change
    create_table :category_specifications do |t|
      t.references :category, index: true, foreign_key: true
      t.references :specification, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
