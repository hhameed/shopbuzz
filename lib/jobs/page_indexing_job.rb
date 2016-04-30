class PageIndexingJob < Job
  def run
    CategorySellerPage.all.each do |csp|
      puts "PROCESSING: #{csp.url}" if !Rails.env.test?
      spiderFactory = JobsHelper.createSpiderFactory(csp.seller_id)
      indexer = spiderFactory.createPageIndexer
      added = 0
      cat_pages = indexer.getPageUrls(csp.url)
      cat_pages.each do |url|
        cp = CataloguePage.find_by_url(url)
        if cp.nil?
          cp = CataloguePage.new
          cp.url = url
          cp.category_seller_page_id = csp.id
          cp.save!
          added += 1
        end
      end
      puts "...done #{cat_pages.count} catalogue links found, #{added} added" if !Rails.env.test?
    end
  end
end