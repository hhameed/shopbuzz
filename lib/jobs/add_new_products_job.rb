class AddNewProductsJob < Job
  def run
    SellerProductLink.where(seller_id: 1).each do |spl|
      if (Product.find_by_name(spl.name).nil?)
        puts "PROCESSING: #{spl.url}" if !Rails.env.test?
        spider = JobsHelper.createSpecsSpider(spl.url, spl.category_id)
        brand_name = spider.getBrand
        if brand_name.nil?
          puts "...skipping" if !Rails.env.test?
          next
        end
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
        spider.getSpecs.each do |key,val|
          specification = Specification.find_by_name(key)
          if specification.nil?
            specification = Specification.new
            specification.code = key
            specification.name = key
            specification.save!
          end
          ps = ProductSpecification.new
          ps.value = val
          ps.product_id = product.id
          ps.specification_id = specification.id
          ps.save!
        end
        puts "...done" if !Rails.env.test?
      end
    end
  end
end