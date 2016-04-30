namespace :demo do

  desc "Load demo data."
  task :db_reset => :environment do
    DatabaseCleaner.clean_with(:truncation)
    load "#{Rails.root}/db/demo_seeds.rb"
    category_seller_pages = [
        {url: "http://www.mega.pk/mobiles/", category_id: 1, seller_id:1},
        {url: "http://www.mega.pk/multimediatablets/", category_id: 2, seller_id:1},
        {url: "http://www.mega.pk/laptop/", category_id: 3, seller_id:1},
        {url: "http://www.shophive.com/mobiles-tablets/mobile-phones?limit=76", category_id: 1, seller_id:2},
        {url: "http://www.shophive.com/mobiles-tablets/tablets?limit=76", category_id: 2, seller_id:2},
        {url: "http://www.shophive.com/laptops-computers/laptops?limit=40", category_id: 3, seller_id:2},
        {url: "http://www.payless.pk/Mobile-n-Accessories/Payless-Mobile-Phones-In-Pakistan?limit=2000", category_id: 1, seller_id:3},
        {url: "http://www.payless.pk/Payless-Tablet-pc?limit=2000", category_id: 2, seller_id:3},
        {url: "http://www.payless.pk/Payless-laptop-in-pakistan?limit=2000", category_id: 3, seller_id:3},
    ]

    category_seller_pages.each do |csp|
      CategorySellerPage.create!(csp)
    end
  end

end