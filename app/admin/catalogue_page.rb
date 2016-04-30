ActiveAdmin.register CataloguePage do

  actions :index, :show
  config.sort_order = "id_asc"

  index do
    column (:url) {|catalogue_seller| link_to(catalogue_seller.url, catalogue_seller.url) }
    column :category_seller_page
    column :created_at
    column :updated_at
  end
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


end
