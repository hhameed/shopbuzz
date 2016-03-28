When(/^I click to see all the reviews of the product$/) do
page.find('a', text:'See All Comments').click
end

Then(/^I should see the message reviews on$/) do
  expect(page).to have_content("Reviews on")
end