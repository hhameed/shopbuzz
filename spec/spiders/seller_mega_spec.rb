require 'rails_helper'

RSpec.describe "Spider for mega.pk", type: :helper do

  it "should be able to fetch catalogue for mega.pk" do
    VCR.use_cassette 'mega_cat' do
      factory = MegaSpiderFactory.new
      spider = factory.createPageIndexer
      urls = spider.getPageUrls("http://www.mega.pk/mobiles/")
      expect(urls.count).to eq(1)
      expect(urls[0]).to eq("http://www.mega.pk/mobiles/")
    end
  end

  it "should be able to fetch products for mega.pk" do
    VCR.use_cassette 'mega_cat' do
      factory = MegaSpiderFactory.new
      spider = factory.createProductExtractor
      products = spider.getProducts("http://www.mega.pk/mobiles/")
      expect(products.count).to eq(500)
      products.each do |product|
        expect(product[:name].length).to be > 2
        expect{Integer(product[:price])}.to_not raise_error
        expect(product[:url]).to match(/http:\/\/www\.mega\.pk\//)
      end
    end
  end

end