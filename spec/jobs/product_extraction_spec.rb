require 'rails_helper'

RSpec.describe "Job for populating the seller products link table", type: :helper do

  before(:each) do
    DatabaseCleaner.clean_with(:truncation)
    load "#{Rails.root}/db/demo_seeds.rb"
    CategorySellerPage.create!(
        :id=>1,
        :url=>'http://www.mega.pk/mobiles/',
        :category_id=>1,
        :seller_id=>1
    )
    CataloguePage.create!(
        :id=>1,
        :url=>'http://www.mega.pk/mobiles/',
        :category_seller_page_id=>1,
    )
  end

  it "should build product index properly" do
    extractor = double("MegaProductExtractor")
    expect(extractor).to receive(:getProducts).with("http://www.mega.pk/mobiles/") {[
        {url: "url1", name: "name1", price: 10},
        {url: "url2", name: "name2", price: 20},
        {url: "url3", name: "name3", price: 30}
    ]}
    factory = double("MegaSpiderFactory")
    expect(factory).to receive(:createProductExtractor) {extractor}
    expect(JobsHelper).to receive(:createSpiderFactory).with(1) { factory }
    expect(SellerProductLink.count).to eq(0)
    job = ProductExtractionJob.new
    job.run
    expect(SellerProductLink.count).to eq(3)
  end

end