categories = [
              {:id=>1, :code=>'mobile-phones', :name=>'Mobile Phones'},
              {:id=>2, :code=>'tablets', :name=>'Tablets'},
              {:id=>3, :code=>'laptops', :name=>'Laptops'},
]

categories.each do |category|
  Category.create!(category)
end

sellers = [
    {id: 1, name: 'Mega', logo:'megapk.png', website:'mega.pk'},
    {id: 2, name: 'Shophive', logo:'shophive.png', website:'shophive.com'},
    {id: 3, name: 'Payless', logo:'payless.png', website:'payless.pk'},
]

sellers.each do |seller|
  Seller.create!(seller)
end

csps = [
    {:id=>1, :url=>'http://www.mega.pk/mobiles/', :category_id=>4, :seller_id=>1},
    {:id=>2, :url=>'http://www.mega.pk/multimediatablets/', :category_id=>6, :seller_id=>1},
    {:id=>3, :url=>'http://www.mega.pk/laptop/', :category_id=>5, :seller_id=>1},
]

csps.each do |csp|
  CategorySellerPage.create!(csp)
end