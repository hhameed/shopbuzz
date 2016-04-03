# Given(/^the following products have been added to database$/) do |table|
#   table.hashes.each do |product|
#     # Each returned user will be a hash representing one row of the user_table
#     # The keys will be the table headers and the values will be the row contents.
#     # Entries can be directly to the database with ActiveRecord methods
#     # Add the necessary Active Record call(s) to populate the database.
#     p = Product.new(product)
#     p.save(:validate => false)
#   end
# end
#
# Given(/^I am on the browse page$/) do
#   visit site_browse_path(:category_id=>1);
# end
#
# When(/^I click on Brand Samsung$/) do
#   fill_in 'textmin', :with => 500
#   click_button 'Submit'
# end
# 
# # Then /^(?:|I )should see only the brand"([^"]*)"$/ do |text|
# #   expect(page).to have_content(text)
# # end
