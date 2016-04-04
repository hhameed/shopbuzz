ActiveAdmin.register UsedProduct do
  config.sort_order ="id_asc"
  index do |customer|
    column :id
    column :name
    column :price
    column :condition_ex,:sortable => false
    column :additional_info, :sortable => false
    column :warranty, :sortable => false
    column :usage_duration, :sortable => false
    column :contact_number, :sortable => false
    column :email, :sortable => false
    column :created_at
    column :updated_at
    column :city_id
    column :category_id, :sortable => false
    column :product_id, :sortable => false do |used_product|
      link_to Product.find(used_product.product_id).name , product_path(used_product.product_id)
    end
  end
end