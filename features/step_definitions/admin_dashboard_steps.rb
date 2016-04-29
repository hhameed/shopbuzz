Given(/^the following user are added to db as admin$/) do |table|
  table.hashes.each do |user|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    us = AdminUser.new(user)
    us.save(:validate => false)
  end
end

Given(/I am on admin login page$/) do
  visit "/admin/login"
end
When(/I fill Email "(.*?)" and Password "(.*?)"$/) do |user,pass|
  fill_in "Email", :with => "test@gmail.com"
  fill_in "Password", :with => "password"
end
When /^I click Login$/ do
  click_button "Login"
end
Then /^I should see "(.*?)"$/ do |signin|
  expect(page).to have_content(signin)
end
When /^I click on "(.*?)"$/ do |mob|
  click_on mob
end
Then /^I should be redirected to "(.*?)"$/ do |red|
  expect(page.current_path).to eq red
end
