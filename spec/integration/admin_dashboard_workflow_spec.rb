require 'rails_helper'

RSpec.describe "Workflow of the admin going through the dashboard:", type: :feature do
  before(:each) do
      DatabaseCleaner.clean_with(:truncation)
      load "#{Rails.root}/db/seeds.rb"
    end
  it "should be able to signin with correct username and password" do
    visit "/admin/login"
    expect(page).to have_content("Forgot your password?")
    expect(page).to_not have_content("Logout")
    fill_in "Email", :with => "admin@shopbuzz.pk"
    fill_in "Password", :with => "password"
    click_button "Login"
    expect(page).to have_content("Dashboard")
    expect(page).to have_content("Logout")
    expect(page).to_not have_content("Forgot your password?")
  end
  it "should be not be able to signin with wrong password/email" do
    visit "/admin/login"
    expect(page).to have_content("Forgot your password?")
    expect(page).to_not have_content("Logout")
    fill_in "Email", :with => "admin22@shop.pk"
    fill_in "Password", :with => "password1"
    click_button "Login"
    expect(page).to_not have_content("Dashboard")
    expect(page).to have_content("Invalid email or password.")
  end
  it "should see recent product on dashboard and can see the product details" do
    visit "/admin/login"
    fill_in "Email", :with => "admin@shopbuzz.pk"
    fill_in "Password", :with => "password"
    click_button "Login"
    click_on "Huawei Media Pad T1 8.0"
    expect(page.current_path).to eq "/admin/products/62"
    expect(page).to have_content("Huawei Media Pad T1 8.0")
    expect(page).to have_content("18999")
    expect(page).to_not have_content("Samsung Galaxy B")
  end
  it "should be able to view and edit the product" do
    visit "/admin/login"
    fill_in "Email", :with => "admin@shopbuzz.pk"
    fill_in "Password", :with => "password"
    click_button "Login"
    click_on "Products"
    expect(page.current_path).to eq "/admin/products"
    expect(page).to have_content("Sony DSC-TX30")
    find(:xpath, "(//a[text()='2'])[1]").click
    expect(page.current_path).to eq "/admin/products/2"
    expect(page).to have_content("Sony DSC-TX30")
    expect(page).to have_content("Rating")
  end
  it "should be able to use filter on usedproducts" do
    visit "/admin/login"
    fill_in "Email", :with => "admin@shopbuzz.pk"
    fill_in "Password", :with => "password"
    click_button "Login"
    click_on "Used Products"
    expect(page.current_path).to eq "/admin/used_products"
    expect(page).to have_content("Used Products")
    expect(page).to have_content("City 1")
    expect(page).to have_content("City 2")
    find('#q_city_id').find(:xpath, 'option[2]').select_option
    click_on "Filter"
    expect(page).to have_content("City ID equals 1")
  end
  it "Complete workflow of admin" do
    visit "/admin/login"
    fill_in "Email", :with => "admin@shopbuzz.pk"
    fill_in "Password", :with => "password"
    click_button "Login"
    click_on "Products"
    expect(page.current_path).to eq "/admin/products"
    expect(page).to have_content("Sony DSC-TX30")
    find(:xpath, "(//a[text()='2'])[1]").click
    expect(page.current_path).to eq "/admin/products/2"
    expect(page).to have_content("Sony DSC-TX30")
    click_on "Edit Product"
    expect(page.current_path).to eq "/admin/products/2/edit"
    fill_in "Price", :with => 1500
    click_on "Update Product"
    expect(page.current_path).to eq "/admin/products/2"
    expect(page).to have_content("Product was successfully updated.")
    click_on "Used Products"
    expect(page.current_path).to eq "/admin/used_products"
    expect(page).to have_content("Used Products")
    expect(page).to have_content("City 1")
    expect(page).to have_content("City 2")
    find('#q_city_id').find(:xpath, 'option[2]').select_option
    click_on "Filter"
    expect(page).to have_content("City ID equals 1")
    click_on "Digital Cameras"
    expect(page.current_path).to eq "/admin/categories/1"
    expect(page).to have_content("Digital Cameras")
    expect(page).to_not have_content("DSLR Cameras")
    click_on "Product Reviews"
    expect(page.current_path).to eq "/admin/product_reviews"
    expect(page).to have_content("Haider")
    expect(page).to have_content("Rishabh")
    click_on "New Product Review"
    find('#product_review_product_id').find(:xpath, 'option[3]').select_option
    fill_in "Name", :with => "Bravo"
    fill_in "Rating", :with => "4"
    fill_in "Content", :with => "This is a test content"
    click_on "Create Product review"
    expect(page).to have_content("Product review was successfully created.")
    expect(page).to have_content("Bravo")
    click_on "Products"
    expect(page.current_path).to eq "/admin/products"
    expect(page).to have_content("Sony DSC-TX30")
    find(:xpath, "(//a[text()='Sony DSC-TX30'])[1]").click
    expect(page.current_path).to eq "/admin/products/productmap/2"
    expect(page).to have_content("Sony DSC-TX30")
    expect(page).to have_content("Remove Product ID")
    find(:css, "#map_product_ids_[value='4']").set(true)
    click_on "Remove Product ID"
    find(:css, "#unmap_product_ids_[value='4']").set(true)
    click_on "Assign Product ID"
    click_on "Seller Product Links"
    expect(page.current_path).to eq "/admin/seller_product_links"
    expect(page).to have_content("Samsung Galaxy Note II")
    expect(page).to have_content("Url")
    click_on "Category Seller Pages"
    expect(page.current_path).to eq "/admin/category_seller_pages"
    expect(page).to have_content("Mega")
    expect(page).to have_content("Shophive")
    click_on "Catalogue Pages"
    expect(page.current_path).to eq "/admin/catalogue_pages"
    expect(page).to have_content("Updated at")
    click_on "Logout"
    expect(page.current_path).to eq "/admin/login"
    expect(page).to have_content("You need to sign in or sign up before continuing.")
  end
end