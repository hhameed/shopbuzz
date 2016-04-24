class ProductExtractionJob < Job
  def run
    CataloguePage.all.each do |cp|
      spiderFactory = JobsHelper.createSpiderFactory(cp.category_seller_page.seller_id)
      extractor = spiderFactory.createProductExtractor
      extractor.getProducts(cp.url).each do |product|
        spl = SellerProductLink.find_by_url(product[:url])
        if(spl.nil?)
          spl = SellerProductLink.new
          spl.category_id = cp.category_seller_page.category_id
          spl.seller_id = cp.category_seller_page.seller_id
          spl.name = product[:name]
          spl.price = product[:price]
          spl.url = product[:url]
        else
          spl.price = product[:price]
        end
        spl.save!
      end
    end
  end
end