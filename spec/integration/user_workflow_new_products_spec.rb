require 'rails_helper'

RSpec.describe "workflow of the user interested in buying new products:", type: :feature do
  before(:each) do
    DatabaseCleaner.clean_with(:truncation)
    load "#{Rails.root}/db/seeds.rb"
  end
  it "he should be able to navigate through all scenerios using the links in the website" do
    visit root_path
    expect(page).to have_content("Samsung Galaxy Note II N7100 16GB")
    expect(page).to_not have_content("Price Range")
    find('#cat_id_4').click
    expect(page).to have_content("Price Range")
    expect(page).to_not have_content("Sony Phone ABC")
    find('#brand_id_2').set(true)
    find('#form_submit').click
    expect(page).to have_content("Sony Phone ABC")
    find('#brand_id_2').set(false)
    find('#form_submit').click
    expect(page).to have_content("Samsung Galaxy Note II N7100 16GB")
    find(:xpath, '//*[@id="ajaxproducts"]/div[1]/div/h4/a').click
    expect(page).to have_content("New Samsung Galaxy Note II N7100 16GB Prices in Pakistan")
  end
end