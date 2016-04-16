Given(/^the following products have been added to product table$/) do |table|
  table.hashes.each do |product|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    p = Product.new(product)
    p.save(:validate => false)
  end
end
Given(/^the following products have been added to specification table$/) do |table|
  table.hashes.each do |spec|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    sp = Specification.new(spec)
    sp.save(:validate => false)
  end
end
Given(/^the following products have been added to product specification table$/) do |table|
  table.hashes.each do |pspec|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    psp = ProductSpecification.new(pspec)
    psp.save(:validate => false)
  end
end
Given(/^I am on the compare page for product "(.*?)" and product "(.*?)"$/) do |p1,p2|
  visit compare_path(product1:p1,product2:p2);
end
Then(/^I should see comparison between the "(.*?)" and "(.*?)"$/) do |p1,p2|
  expect(page).to have_content(p1)
  expect(page).to have_content(p2)
end
Then(/^I should see an error "(.*?)"$/) do |errormessage|
  expect(page).to have_content(errormessage)
end
Then(/^I should see an error same product "(.*?)"$/) do |errormessage|
  expect(page).to have_content(errormessage)
end
Then(/^I should see invalid error for first product "(.*?)"$/) do |errormessage|
  expect(page).to have_content(errormessage)
end
Then(/^I should see invalid error for second product "(.*?)"$/) do |errormessage|
  expect(page).to have_content(errormessage)
end
Then(/^I should see invalid id for first product "(.*?)"$/) do |errormessage|
  expect(page).to have_content(errormessage)
end
Then(/^I should see invalid id for second product "(.*?)"$/) do |errormessage|
  expect(page).to have_content(errormessage)
end
Then(/^I should see comparison and one of the specification is 0$/) do
  expect(page).to have_content("iphone 5s")
  expect(page).to have_content("LG G5")
  expect(page).to have_content("Weight")
  expect(page).to have_content("0")
end