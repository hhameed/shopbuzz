require 'rails_helper'

RSpec.describe "Job helper", type: :helper do

  it "should have properly working factory methods" do
    expect(JobsHelper.createSpiderFactory(1)).to be_a(MegaSpiderFactory)
    expect(JobsHelper.createSpiderFactory(2)).to be_a(ShophiveSpiderFactory)
    expect(JobsHelper.createSpiderFactory(3)).to be_a(PaylessSpiderFactory)
    expect{JobsHelper.createSpiderFactory(4)}.to raise_error(NotImplementedError)

    VCR.use_cassette 'mega_product_mobile' do
      expect(JobsHelper.createSpecsSpider("http://www.mega.pk/mobiles_products/13928/Apple-iPhone-SE-64GB.html", 1)).to be_a(MobiMegaSpecsSpider)
    end

    VCR.use_cassette 'mega_product_tablet' do
      expect(JobsHelper.createSpecsSpider("http://www.mega.pk/multimediatablets_products/13925/Apple-iPad-Pro-Wifi+4G-256GB.html", 2)).to be_a(TabMegaSpecsSpider)
    end

    VCR.use_cassette 'mega_product_lap' do
      expect(JobsHelper.createSpecsSpider("http://www.mega.pk/laptop_products/13939/Dell-Inspiron-7359-Ci3.html", 3)).to be_a(LapMegaSpecsSpider)
    end

    expect{JobsHelper.createSpecsSpider("some_url", 4)}.to raise_error(NotImplementedError)
  end

end