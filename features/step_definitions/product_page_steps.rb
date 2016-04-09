<<<<<<< HEAD

=======
>>>>>>> 8ba5c2d7666f1316394b1d194a9079e2a9be7a8a
Given(/^I am on the ShopBuzz Homepage$/) do
  visit root_path;
end

When(/^I click the product page link$/) do
  page.all(:link,"iphone")
end

Then(/^I should see the product page$/) do
  visit product_path(Product.find(1));
end