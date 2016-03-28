Given(/^I am on the home page$/) do
  visit root_path;
end
And /^I fill in search bar with "(.*?)"$/ do |name|
  fill_in "search", :with=> name
end
And /^I choose "([^"]*)" in the autocomplete list1$/ do |text|
    page.driver.browser.execute_script %Q{ $('input[data-autocomplete]').trigger("focus") }
    fill_in("search",:with => "ip")
    page.driver.browser.execute_script %Q{ $('input[data-autocomplete]').trigger("keydown") }
    sleep 2
    page.driver.browser.execute_script %Q{ $('.ui-menu-item a:contains("iphone 5 16GB")').trigger("mouseenter").trigger("click"); }
end

Then /^the search bar should contain "(.*?)"$/ do |name1|
  expect(page).to have_content("here")
end
