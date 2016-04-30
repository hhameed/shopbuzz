require 'rails_helper'

RSpec.describe "Spider for mega.pk specs", type: :helper do

  it "base class should be working fine" do
    VCR.use_cassette 'mega_product1' do
      spider = MegaSpecsSpider.new("http://www.mega.pk/mobiles_products/9821/Voice-V165.html")
      expect(spider.getBrand).to eq("Voice")
      expect(spider.getImageLink).to eq("http://www.mega.pk/items_images/Voice+V165+Price+in+Pakistan_-_9821.jpg")
      expect{spider.getSpecs}.to raise_error(NotImplementedError)
    end
  end

  it "laptop class should be working fine" do
    VCR.use_cassette 'mega_product_lap' do
      spider = LapMegaSpecsSpider.new("http://www.mega.pk/laptop_products/13939/Dell-Inspiron-7359-Ci3.html")
      expect(spider.getBrand).to eq("Dell")
      expect(spider.getImageLink).to eq("http://www.mega.pk/items_images/Dell+Inspiron+7359+Ci3+Price+in+Pakistan_-_13939.jpg")
      expect(spider.getSpecs.count).to eq(57)
    end
  end

  it "mobile class should be working fine" do
    VCR.use_cassette 'mega_product_mobile' do
      spider = MobiMegaSpecsSpider.new("http://www.mega.pk/mobiles_products/13928/Apple-iPhone-SE-64GB.html")
      expect(spider.getBrand).to eq("Apple")
      expect(spider.getImageLink).to eq("http://www.mega.pk/items_images/Apple+iPhone+SE+64GB+Price+in+Pakistan_-_13928.jpg")
      expect(spider.getSpecs.count).to eq(42)
    end
  end

  it "tablet class should be working fine" do
    VCR.use_cassette 'mega_product_tablet' do
      spider = TabMegaSpecsSpider.new("http://www.mega.pk/multimediatablets_products/13925/Apple-iPad-Pro-Wifi+4G-256GB.html")
      expect(spider.getBrand).to eq("Apple")
      expect(spider.getImageLink).to eq("http://www.mega.pk/items_images/Apple+iPad+Pro+Wifi%2B4G+256GB+Price+in+Pakistan_-_13925.jpg")
      expect(spider.getSpecs.count).to eq(64)
    end
  end

end