# Given(/^the following products have been added to the Used Product$/) do |table|
#   table.hashes.each do |usedproduct|
#     # Each returned user will be a hash representing one row of the user_table
#     # The keys will be the table headers and the values will be the row contents.
#     # Entries can be directly to the database with ActiveRecord methods
#     # Add the necessary Active Record call(s) to populate the database.
#     p = UsedProduct.new(usedproduct)
#     p.save(:validate => false)
#   end
# end
# Given(/^I am on the Homepage$/) do
#   visit root_path;
# end
#
# When(/^I click the usedproduct page link$/) do
#   #page.all(:link,"1")
#   visit "/used_products/page_by_category?category_id=4"
# end
#
# Then(/^I should see the usedproduct page$/) do
#   #visit used_products_page_by_category_path(Product.find_by_category_id(1));
#   #visit "/used_products/page_by_category?category_id=1"
#   #expect(page).to have_content("Used Digital Cameras")
# end