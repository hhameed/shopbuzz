ActiveAdmin.register UsedProduct do
  config.sort_order ="id_asc"
  index do |customer|
    column :id
    column :name
    column :price
    column :condition_ex
    column :additional_info, :sortable => false
    column :warranty, :sortable => false
    column :usage_duration, :sortable => false
    column :contact_number, :sortable => false
    column :email, :sortable => false
    column :created_at
    column :updated_at
    column :city_id
    column :category_id
    column :product_id, :sortable => false do |used_product|
    link_to used_product.product_id , product_path(used_product.product_id)
    end
  end
end