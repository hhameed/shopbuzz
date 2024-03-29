Given(/^the following categories have been added to the database$/) do |table|
  table.hashes.each do |category|
    c=Category.new(category)
    c.save(:validate=>false)
  end
end
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

Given(/^I am on the product page$/) do
  visit product_path(Product.find(1));
end

When(/^I click on Post Comment Button$/) do
  page.find('a', text:'Post Your Comments').click
end

When(/^I fill in the form with with name dengkliu rating 3 and content a and click save$/) do
  script = "document.getElementById('product_review_rating').value = '3'"
  fill_in "Name", :with=>'dengkliu'
  fill_in "Content", :with=>'a'
  page.evaluate_script(script)
  click_button "Submit Your Comment"
end

Then /^(?:|I )should see a message "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end

