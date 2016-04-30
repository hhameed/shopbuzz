class PageIndexingJob < Job
  def run
    CategorySellerPage.all.each do |csp|
      puts "PROCESSING: #{csp.url}" if !Rails.env.test?
      spiderFactory = JobsHelper.createSpiderFactory(csp.seller_id)
      indexer = spiderFactory.createPageIndexer
      indexer.getPageUrls(csp.url).each do |url|
        cp = CataloguePage.find_by_url(url)
        if cp.nil?
          cp = CataloguePage.new
          cp.url = url
          cp.category_seller_page_id = csp.id
          cp.save!
        end
      end
      puts "...done" if !Rails.env.test?
    end
  end
end