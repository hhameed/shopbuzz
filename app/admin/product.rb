ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  config.sort_order = "id_asc"
 permit_params :rating, :name, :price, :image, :brand, :category
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

 member_action :comments do
  @comments = resource.comments
  # This will render app/views/admin/posts/comments.html.erb
 end

  index do
    column(:id)      {|product| link_to(product.id, admin_product_path(product)) }
    column(:name)    {|product| link_to(product.name, admin_product_mapping_path(product.id)) }
    column(:price)
    column(:image)
    column(:rating)
    column(:views)
    column(:created_at)
    column (:updated_at)
  end


 controller do
  # This code is evaluated within the controller class

  def productmap
   @product=Product.find(params[:id])
   product_name = @product.name
   product_name = product_name.split(" ")

   product_name_search = product_name.map { |i| 'name like "%' + i + '%"' }.join(" AND ")
   #@products=SellerProductLink.find_by_name(params[:name])
   # @products=SellerProductLink.where("name LIKE ?", "%Samsung%").all
   # Foo.where("bar LIKE :query", query: "%#{query}%")
   @mappedproducts=SellerProductLink.where(product_name_search)
   @mappedproducts=@mappedproducts.where.not(product_id: nil)

   # @unmappedproducts=SellerProductLink.where(product_name_search + " AND product_id = ? ", nil)
   @unmappedproducts=SellerProductLink.where(product_name_search).where(product_id: nil)
    puts @unmappedproducts

  end

  def removeid
    @paramsgot = params[:map_product_ids]
    @paramsgot.each do |pid|
      @pid = SellerProductLink.find(pid)
      @pid.product_id = nil
      @pid.save!
    end

    redirect_to admin_product_mapping_path(params[:product_id])

  end

  def assignid
    @paramsgot = params[:unmap_product_ids]
    @paramsgot.each do |pid|
      @pid = SellerProductLink.find(pid)
      @pid.product_id = params[:product_id]
      @pid.save!
    end

    redirect_to admin_product_mapping_path(params[:product_id])

  end







 end

end
