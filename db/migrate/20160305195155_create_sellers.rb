class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      t.string :logo
      t.string :website

      t.timestamps null: false
    end
  end
end
