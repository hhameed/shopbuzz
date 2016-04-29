require 'rails_helper'

RSpec.describe "Job for indexing catalogue pages", type: :helper do

  before(:each) do
    DatabaseCleaner.clean_with(:truncation)
    load "#{Rails.root}/db/demo_seeds.rb"
    CategorySellerPage.create!(
        :id=>1,
        :url=>'http://www.mega.pk/mobiles/',
        :category_id=>1,
        :seller_id=>1
    )
  end

  it "should build catalogue index properly" do
    indexer = double("MegaPageIndexer")
    expect(indexer).to receive(:getPageUrls).with("http://www.mega.pk/mobiles/") {["http://www.mega.pk/mobiles/"]}
    factory = double("MegaSpiderFactory")
    expect(factory).to receive(:createPageIndexer) {indexer}
    expect(JobsHelper).to receive(:createSpiderFactory).with(1) { factory }
    expect(CataloguePage.count).to eq(0)
    job = PageIndexingJob.new
    job.run
    expect(CataloguePage.count).to eq(1)
    expect(CataloguePage.take.url).to eq("http://www.mega.pk/mobiles/")
  end

end