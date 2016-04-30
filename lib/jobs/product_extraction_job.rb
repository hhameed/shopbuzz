class ProductExtractionJob < Job
  def run
    CataloguePage.all.each do |cp|
      puts "PROCESSING: #{cp.url}" if !Rails.env.test?
      spiderFactory = JobsHelper.createSpiderFactory(cp.category_seller_page.seller_id)
      extractor = spiderFactory.createProductExtractor
      added = 0
      products = extractor.getProducts(cp.url)
      products.each do |product|
        spl = SellerProductLink.find_by_url(product[:url])
        if(spl.nil?)
          spl = SellerProductLink.new
          spl.category_id = cp.category_seller_page.category_id
          spl.seller_id = cp.category_seller_page.seller_id
          spl.name = product[:name]
          spl.price = product[:price]
          spl.url = product[:url]
          added += 1
        else
          spl.price = product[:price]
        end
        spl.save!
      end
      puts "...done #{products.count} product links found, #{added} added" if !Rails.env.test?
    end
  end
end