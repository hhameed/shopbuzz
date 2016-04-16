
Given(/^the following products have been added to database$/) do |table|
  table.hashes.each do |product|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    p = Product.new(product)
    p.save(:validate => false)
  end
end

Given(/^the following brands have been added to the database$/) do |table|
  table.hashes.each do |brand|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    p = Brand.new(brand)
    p.save(:validate => false)
  end
end

# Given(/^the following categories have been added to the database$/) do |table|
#   table.hashes.each do |category|
#     # Each returned user will be a hash representing one row of the user_table
#     # The keys will be the table headers and the values will be the row contents.
#     # Entries can be directly to the database with ActiveRecord methods
#     # Add the necessary Active Record call(s) to populate the database.
#     p = Category.new(category)
#     p.save(:validate => false)
#   end
# end

Given(/^I am on the browse page$/) do
  visit site_browse_path(:category_id=>4);
end

When(/^I fill the min value$/) do
  fill_in 'textmin', :with => 55000
  click_button 'Submit'
end

When(/^I fill the max value$/) do
  fill_in 'textmax', :with => 55000
  click_button 'Submit'
end

Then (/^I should see only the product "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I check the apple brand$/) do
  find_by_id("brand_id_1").set(true)
end

Then (/^I should see only the brand products "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I click on the min_to_max$/) do
  find('#sortid').find("option[value='1']").click
end

When(/^I click on the max_to_min$/) do
  find('#sortid').find("option[value='2']").click
end

Then(/^product "([^"]*)" should come before  "([^"]*)"$/) do |product1, product2|
  merge = "#{product1}.*#{product2}"
  #puts merge.inspect
  bdy = page.body
  result = /#{merge}/m =~ bdy
  expect(result).to be_truthy
end




