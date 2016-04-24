class AddNewProductsJob < Job
  def run
    SellerProductLink.where(seller_id: 1).each do |spl|
      if (Product.find_by_name(spl.name).nil?)
        spider = JobsHelper.createSpecsSpider(spl.url, spl.category_id)
        brand_name = spider.getBrand
        brand = Brand.find_by_name(brand_name)
        if brand.nil?
          brand = Brand.new
          brand.code = brand_name
          brand.name = brand_name
          brand.save!
        end
        product = Product.new
        product.name = spl.name
        product.price = spl.price
        product.image = spider.getImageLink
        product.views = 0
        product.brand_id = brand.id
        product.category_id = spl.category_id
        product.save!
        spider.getSpecs.each do |spec|
          specification = Specification.find_by_name(spec[:key])
          if specification.nil?
            specification = Specification.new
            specification.code = spec[:key]
            specification.name = spec[:key]
            specification.save!
          end
          ps = ProductSpecification.new
          ps.value = spec[:val]
          ps.product_id = product.id
          ps.specification_id = specification.id
          ps.save!
        end
      end
    end
  end
end