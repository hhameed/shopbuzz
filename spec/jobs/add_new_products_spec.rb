require 'rails_helper'

RSpec.describe "Job for adding new products", type: :helper do

  before(:each) do
    DatabaseCleaner.clean_with(:truncation)
    load "#{Rails.root}/db/demo_seeds.rb"
    SellerProductLink.create!(
        id: 1,
        name: 'Voice V165',
        price: 2649,
        category_id: 1,
        seller_id: 1,
        url: 'http://www.mega.pk/mobiles_products/9821/Voice-V165.html'
    )
  end

  it "should add product properly" do
    VCR.use_cassette 'mega_product1' do
      spider = double("MobiMegaSpecsSpider")
      expect(spider).to receive(:getBrand) { "Voice" }
      expect(spider).to receive(:getImageLink) { "http://www.mega.pk/items_images/Voice+V165+Price+in+Pakistan_-_9821.jpg" }
      expect(spider).to receive(:getSpecs) { Hash["spec1"=>"value1", "spec2"=>"value2", "spec3"=>"value3", "spec4"=>"value4"] }
      expect(JobsHelper).to receive(:createSpecsSpider) { spider }
      expect(Product.count).to eq(0)
      expect(Specification.count).to eq(0)
      expect(ProductSpecification.count).to eq(0)
      job = AddNewProductsJob.new
      job.run
      expect(Product.count).to eq(1)
      expect(Specification.count).to eq(4)
      expect(ProductSpecification.count).to eq(4)
    end
  end

end