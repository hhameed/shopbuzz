class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.string :code
      t.string :name

      t.timestamps null: false
    end
  end
end
