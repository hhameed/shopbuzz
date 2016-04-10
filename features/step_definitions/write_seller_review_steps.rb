Given(/^the following sellers have been added to the database$/) do |table|
  table.hashes.each do |seller|
    # Each returned user will be a hash representing one row of the user_table
    # The keys will be the table headers and the values will be the row contents.
    # Entries can be directly to the database with ActiveRecord methods
    # Add the necessary Active Record call(s) to populate the database.
    s = Seller.new(seller)
    s.save(:validate => false)
  end
end

Given(/^I am on the seller page$/) do
  visit seller_path(Seller.find(1));
end

When(/^I click on Comment Button$/) do
  page.find('a', text:'Post Your Comments').click
end


