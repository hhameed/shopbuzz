require 'rails_helper'

RSpec.describe "Spider for payless.pk", type: :helper do

  it "should be able to fetch catalogue for payless.pk" do
    VCR.use_cassette 'payless_cat_1' do
      factory = PaylessSpiderFactory.new
      spider = factory.createPageIndexer
      urls = spider.getPageUrls("http://www.payless.pk/Mobile-n-Accessories/Payless-Mobile-Phones-In-Pakistan?limit=2000")
      expect(urls.count).to eq(1)
      expect(urls[0]).to eq("http://www.payless.pk/Mobile-n-Accessories/Payless-Mobile-Phones-In-Pakistan?limit=2000")
    end
  end

  it "should be able to fetch products for payless.pk" do
    VCR.use_cassette 'payless_cat_1' do
      factory = PaylessSpiderFactory.new
      spider = factory.createProductExtractor
      products = spider.getProducts("http://www.payless.pk/Mobile-n-Accessories/Payless-Mobile-Phones-In-Pakistan?limit=2000")
      expect(products.count).to eq(162)
      non_zero_prices = 0
      products.each do |product|
        expect(product[:name].length).to be > 5
        expect{Integer(product[:price])}.to_not raise_error
        expect(product[:url]).to match(/http:\/\/www\.payless\.pk\/Mobile-n-Accessories\/Payless-Mobile-Phones-In-Pakistan\//)
        if Integer(product[:price]) > 0
          non_zero_prices += 1
        end
      end
      expect(non_zero_prices).to eq(162)
    end
  end

end