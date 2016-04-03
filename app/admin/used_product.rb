ActiveAdmin.register UsedProduct do
  config.sort_order ="id_asc"
  index do |customer|
    column :id
    column :name
    column :price
    column :product_id, :sortable => false do |used_product|
    link_to "Product Link" , product_path(used_product.product_id)
    end
  end
end