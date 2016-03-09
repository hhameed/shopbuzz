class RemoveCityNameFromCity < ActiveRecord::Migration
  def change
    remove_column :cities, :city_name, :string
  end
end
