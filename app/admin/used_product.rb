ActiveAdmin.register UsedProduct do
  config.sort_order ="id_asc"
  index do

    column :name;    column :price;    column :condition_ex,:sortable => false;    column :additional_info, :sortable => false;column :warranty, :sortable => false; column :usage_duration, :sortable => false ;column :contact_number, :sortable => false    ; column :email, :sortable => false ; column :created_at  ; column :updated_at ; column :city ; column :category, :sortable => false  ; column :product

  end
end