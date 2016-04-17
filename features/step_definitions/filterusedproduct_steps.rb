Given(/^the following Usedproducts have been added to database$/) do |table|
  table.hashes.each do |usedproduct|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    p = UsedProduct.new(usedproduct)
    p.save(:validate => false)
  end
end

Given(/^the following cities have been added to database$/) do |table|
  table.hashes.each do |city|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    p = City.new(city)
    p.save(:validate => false)
  end
end

Given(/^the following province have been added to database$/) do |table|
  # table is a table.hashes.keys # => [:id, :name]
  table.hashes.each do |province|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    p = Province.new(province)
    p.save(:validate => false)
  end
end

Given(/^I am on the usedproduct page$/) do
  visit used_products_page_by_category_path(:category_id=>4)
end

When(/^I click on the condition$/) do
  find('#conditionid').find("option[value='3']").click
end

Then(/^I should see only the usedproduct posted by  "([^"]*)"$/) do |arg|
  expect(page).to have_content(arg)
end

When(/^I click on the filterbutton$/) do
  find('#filterbutton').click
end


When(/^I click on the warranty$/) do
  find('#warranty').find("option[value='1']").click
end

When(/^I click on the city$/) do
  find('#city').find("option[value='1']").click
end

When(/^I click on the used duration$/) do
  find('#duration').find("option[value='1']").click
end

When(/^I type the name of the used product$/) do
  fill_in 'pname', :with => 'iphone 6S'
end