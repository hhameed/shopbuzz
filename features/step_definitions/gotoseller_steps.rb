Given(/^there is a product with a seller link$/) do

  categories = [{:id=>1, :code=>'digital-cameras', :name=>'Digital Cameras'},
                {:id=>2, :code=>'dslr-cameras', :name=>'DSLR Cameras'},]

  categories.each do |category|
    Category.create!(category)
  end

  brands = [
      {:id=>1, :code=>'sumsung', :name=>'Sumsung'},
      {:id=>2, :code=>'sony', :name=>'Sony'},]

  brands.each do |brand|
    Brand.create!(brand)
  end

  products=[{:id=>1, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>1}]

  products.each do |product|
    Product.create!(product)
  end

  sellers = [
      {id: 1, name: 'Shophive', logo:'shophive.png', website:'shophive.com'},
      {id: 2, name: 'Mega', logo:'megapk.png', website:'mega.pk'},
      {id: 3, name: 'Homeshopping', logo:'homeshopping.png', website:'homeshopping.com'},
  ]

  sellers.each do |seller|
    Seller.create!(seller)
  end

  seller_product_links = [
      {id: 1, name: 'Samsung Galaxy Note II', price: 40699, info: '', not_found: nil, product_id: 1, category_id: 4, seller_id: 1, url: 'http://www.payless.pk/Mobile-n-Accessories/Payless-Mobile-Phones-In-Pakistan/samsung-galaxy-note-ii-n7100-in-pakistan?limit=2000'},
      {id: 2, name: 'Samsung Galaxy Note II', price: 18000, info: '', not_found: nil, product_id: 1, category_id: 4, seller_id: 2, url: 'http://www.mega.pk/Mobile-n-Accessories/Payless-Mobile-Phones-In-Pakistan/samsung-galaxy-note-ii-n7100-in-pakistan?limit=2000'},
  ]

  seller_product_links.each do |spl|
    SellerProductLink.create!(spl)
  end
end

When(/^I visit the product's page$/) do
  @product = Product.find(1)
  visit product_path @product
end

Then(/^I should see the link shown on the page$/) do
  @spl = SellerProductLink.find(1)
  expect(page).to have_text(@spl.name)
end

When(/^I visit the product's page and click the seller product link$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be taken to a page that redirects to the seller product page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
