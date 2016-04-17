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
