Given(/^I am on the contact page$/) do
  visit contacts_path;
end

When(/^I fill in the form with with name kiran email kiranyls@gmail.com and message a and click Submit$/)do
  fill_in 'Name', :with => 'Kiran'
  fill_in 'Email', :with => 'kiran@gmail.com'
  fill_in 'Message', :with => 'cool website'
  click_button 'Submit'
end

Then /^(?:|I )should see message "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end