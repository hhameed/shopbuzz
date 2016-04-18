require 'rails_helper'

RSpec.describe "workflow of the user interested in buying used products:", type: :feature do
  before(:each) do
    DatabaseCleaner.clean_with(:truncation)
    load "#{Rails.root}/db/seeds.rb"
  end
  it "he should be able to navigate through all scenerios using the links in the website" do
    visit root_path

    expect(page).to have_content("Samsung Galaxy Note II N7100 16GB")

    expect(page).to_not have_content("Price Range")

    visit "http://localhost:3000/used_products/page_by_category?category_id=4"

    expect(page).to have_content("Used Mobile Phones")

    expect(page).to have_content("Condition")

    expect(page).to_not have_content("New Samsung Galaxy Note II N7100 16GB Prices in Pakistan")

    find('#filterbutton').click

    find('#pname').set("abcd")

    find('#submit',visible: false).click

    expect(page).to have_content("OOPS, No Products Match")

    find('#pname').set("Samsung")

    find('#submit',visible: false).click

    expect(page).to have_content("Samsung Galaxy Note II N7100 16GB")

    visit "http://localhost:3000/contacts"

    expect(page).to have_content("Message")

    fill_in 'Name', :with => 'Kiran'

    fill_in 'Email', :with => 'kiran@gmail.com'

    fill_in 'Message', :with => 'cool website'

    click_button 'Submit'

    expect(page).to have_content("Thank you for contacting us. We will respond to you as soon as possible")

  end
  end