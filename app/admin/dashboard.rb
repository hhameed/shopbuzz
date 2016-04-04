ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1
  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do

      column do
        panel "UsedProducts" do
          table_for UsedProduct.order('id desc').limit(10).each do |usedproduct|
            column(:name)    {|usedproduct| link_to(usedproduct.name, admin_used_product_path(usedproduct)) }
            column(:price)
            column(:product_id)    {|usedproduct| link_to(usedproduct.product_id, product_path(usedproduct.product_id)) }
          end
        end
      end

      column do
        panel "Catgeories" do
          table_for Category.order('id desc').limit(10).each do |category|
            column(:name)    {|category| link_to(category.name, admin_category_path(category)) }
          end
        end
      end

    end # columns


    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end

  end # content
end
