class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :code
      t.string :name

      t.timestamps null: false
    end
  end
end
