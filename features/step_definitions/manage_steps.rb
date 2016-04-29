Given(/^the following products have been added to category table$/) do |table|
  table.hashes.each do |cat|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    ct = Category.new(cat)
    ct.save(:validate => false)
  end
end
Given(/^the following products have been added to Review table$/) do |table|
  table.hashes.each do |per|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    ct = ProductReview.new(per)
    ct.save(:validate => false)
  end
end

When /^I click on View for product2$/ do
  find(:xpath, "(//a[text()='View'])[2]").click
end
When /^I click on Edit for product2$/ do
  find(:xpath, "(//a[text()='Edit'])[2]").click
end
When /^I click on Delete for product2$/ do
  find(:xpath, "(//a[text()='Delete'])[2]").click
end
When(/I fill "(.*?)" with "(.*?)"$/) do |arg1,arg2|
  fill_in arg1, :with => arg2
end
When /^I click on View for category2$/ do
  find(:xpath, "(//a[text()='View'])[2]").click
end
When /^I click on Edit for category2$/ do
  find(:xpath, "(//a[text()='Edit'])[2]").click
end
When /^I click on View for review1$/ do
  find(:xpath, "(//a[text()='View'])[1]").click
end
When /^I click on Edit for review1$/ do
  find(:xpath, "(//a[text()='Edit'])[1]").click
end
When /^I click on product Nikon D4S$/ do |title|
  find(:xpath, "(//a[text()='Nikon D4S'])[1]").click
end