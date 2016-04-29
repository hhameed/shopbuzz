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

category_seller_pages = [
    {url: "http://www.mega.pk/mobiles/", category_id: 1, seller_id:1},
    {url: "http://www.mega.pk/multimediatablets/", category_id: 2, seller_id:1},
    {url: "http://www.mega.pk/laptop/", category_id: 3, seller_id:1},
    {url: "http://www.shophive.com/mobiles-tablets/mobile-phones", category_id: 1, seller_id:2},
    {url: "http://www.shophive.com/mobiles-tablets/tablets", category_id: 2, seller_id:2},
    {url: "http://www.shophive.com/laptops-computers/laptops", category_id: 3, seller_id:2},
    {url: "http://www.payless.pk/Mobile-n-Accessories/Payless-Mobile-Phones-In-Pakistan?limit=2000", category_id: 1, seller_id:3},
    {url: "http://www.payless.pk/Payless-Tablet-pc?limit=2000", category_id: 2, seller_id:3},
    {url: "http://www.payless.pk/Payless-laptop-in-pakistan", category_id: 3, seller_id:3},
]

category_seller_pages.each do |csp|
  CategorySellerPage.create!(csp)
end

AdminUser.create!(email: 'admin@shopbuzz.pk', password: 'password', password_confirmation: 'password')