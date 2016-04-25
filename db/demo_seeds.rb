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