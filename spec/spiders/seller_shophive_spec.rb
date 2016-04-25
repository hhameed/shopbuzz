require 'rails_helper'

RSpec.describe "Spider for shophive", type: :helper do

  it "should be able to fetch catalogue for shophive" do
    VCR.use_cassette 'shophive_cat' do
      factory = ShophiveSpiderFactory.new
      spider = factory.createPageIndexer
      urls = spider.getPageUrls("http://www.shophive.com/mobiles-tablets/mobile-phones?limit=76")
      expect(urls.count).to eq(8)
      expect(urls[0]).to eq("http://www.shophive.com/mobiles-tablets/mobile-phones?limit=76&p=1")
      expect(urls[7]).to eq("http://www.shophive.com/mobiles-tablets/mobile-phones?limit=76&p=8")
    end
  end

  it "should be able to fetch products for shophive" do
    VCR.use_cassette 'shophive_cat_p2' do
      factory = ShophiveSpiderFactory.new
      spider = factory.createProductExtractor
      products = spider.getProducts("http://www.shophive.com/mobiles-tablets/mobile-phones?limit=76&p=2")
      expect(products.count).to eq(76)
      products.each do |product|
        expect(product[:name].length).to be > 2
        expect{Integer(product[:price])}.to_not raise_error
        expect(product[:url]).to match(/http:\/\/www\.shophive\.com\//)
      end
    end
  end

end