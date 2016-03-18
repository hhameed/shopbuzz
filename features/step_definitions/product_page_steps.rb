
Given(/^I am on the ShopBuzz Homepage$/) do
  visit root_path;
end

When(/^I click the product page link$/) do
  page.all(:link,"iphone")
end

Then(/^I should see the product page$/) do
  visit product_path(Product.find(1));
end