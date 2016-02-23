Given(/^the following products have been added to the database$/) do |table|
  table.hashes.each do |product|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    p = Product.new(product)
    p.save(:validate => false)
  end
end

Given(/^I am on the ShopBuzz Homepage$/) do
  visit root_path;
end

When(/^I click the product page link$/) do
  page.all(:link,"iphone")
end

Then(/^I should see the product page$/) do
  visit product_path(Product.find(1));
end