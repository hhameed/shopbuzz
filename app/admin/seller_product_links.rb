ActiveAdmin.register SellerProductLink do
  actions :index, :show
  config.sort_order = "id_asc"
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  index do
    column :name
    column :price
    column (:url) {|seller_product| link_to(seller_product.url, seller_product.url) }
    column :info, :sortable => false
    column :product
    column :category, :sortable => false
    column :seller, :sortable => false
    column :created_at
    column :updated_at
  end
end
