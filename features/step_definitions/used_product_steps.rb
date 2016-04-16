Given(/^I am on the Product page$/) do
  visit product_path(Product.find(1));
end

When(/^I click the sell usedproduct page link$/) do
  visit  new_product_used_product_path(Product.find(1))
end

When(/^I fill in the form and click submit$/) do
  fill_in "Name", :with=>'kiran'
  fill_in "Email", :with=>'kiran@gmail.com'
  fill_in "Description", :with=>'Good'
  fill_in "Price", :with=> 30000
  find('#used_product_city_id').find("option[value='1']").click
  script2 = "document.getElementById('warranty').value = 'No Warranty'"
  script3 = "document.getElementById('usage_duration').value = '1-3 Month Used'"
  fill_in "Tel Number", :with=>"35161618"
  click_button "Submit Your Used iphone 5 16GB"
end