# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


categories = [{:id=>1, :code=>'digital-cameras', :name=>'Digital Cameras'},
              {:id=>2, :code=>'dslr-cameras', :name=>'DSLR Cameras'},
              {:id=>3, :code=>'handy-cameras', :name=>'Handy Cameras'},
              {:id=>4, :code=>'mobile-phones', :name=>'Mobile Phones'},
              {:id=>5, :code=>'laptops', :name=>'Laptops'},
              {:id=>6, :code=>'tablets', :name=>'Tablets'}]

categories.each do |category|
  Category.create!(category)
end

brands = [
          {:id=>1, :code=>'sumsung', :name=>'Sumsung'},
          {:id=>2, :code=>'sony', :name=>'Sony'},
          {:id=>3, :code=>'nikon-d4s', :name=>'Nikon D4S'},
          {:id=>4, :code=>'dslr', :name=>'DSLR'},
          {:id=>5, :code=>'lenovo', :name=>'Lenovo'},
          {:id=>6, :code=>'huawei', :name=>'Huawei'}]

brands.each do |brand|
  Brand.create!(brand)
end

products=[{:id=>1, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>2, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Sony DSC-TX30', :price=>33499, :image=>'http://shopbuzz.pk/images/products/profile/2052-sony-dsc-tx30-price-in-pakistan.jpg', :brand_id=>2, :category_id=>1},
          {:id=>3, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Nikon D4S', :price=>474999, :image=>'http://shopbuzz.pk/images/products/profile/1911-nikon-d4s-price-in-pakistan.jpg', :brand_id=>3, :category_id=>2},
          {:id=>4, :rating=>4.0, :review_count=>1, :views=>1, :name=>'DSLR NEX-VG30EH', :price=>245999, :image=>'http://shopbuzz.pk/images/products/profile/953-dslr-nex-vg30eh-price-in-pakistan.jpg', :brand_id=>4, :category_id=>3},
          {:id=>5, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Lenovo Yoga 900', :price=>163999, :image=>'http://shopbuzz.pk/images/products/profile/2212-lenovo-yoga-900-price-in-pakistan.jpg', :brand_id=>5, :category_id=>5},
          {:id=>6, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Huawei Media Pad T1 8.0', :price=>18999, :image=>'http://shopbuzz.pk/images/products/profile/2183-huawei-media-pad-t1-8.0-price-in-pakistan.jpg', :brand_id=>6, :category_id=>6}]

products.each do |product|
  Product.create!(product)
end

product_reviews=[{:id=>1, :product_id=>1, :name=>'Haider', :email=>nil, :rating=>4, :content=>'This is a small comment'},
                 {:id=>2, :product_id=>2, :name=>'Kiran', :email=>nil, :rating=>5, :content=>'This is a big comment'},
                 {:id=>3, :product_id=>3, :name=>'Balaji', :email=>nil, :rating=>3, :content=>'This is a long comment'},
                 {:id=>4, :product_id=>4, :name=>'Rishabh', :email=>nil, :rating=>4, :content=>'This is a short comment'},
                 {:id=>5, :product_id=>5, :name=>'Tony', :email=>nil, :rating=>5, :content=>'This is a good comment'},
                 {:id=>6, :product_id=>6, :name=>'John', :email=>nil, :rating=>3, :content=>'This is a bad comment'}]

product_reviews.each do |product_review|
  ProductReview.create!(product_review)
end

specifications=[{:id=>1, :code=>'weight', :name=>'Weight'},
                {:id=>2, :code=>'screen-size', :name=>'Screen Size'},
                {:id=>3, :code=>'flash-light', :name=>'Flash Light'},
                {:id=>4, :code=>'video-recording', :name=>'Video Recording'},
                {:id=>5, :code=>'picture-resolution', :name=>'Picture Resolution'},
                {:id=>6, :code=>'l3-cache', :name=>'L3 Cache'},
                {:id=>7, :code=>'dimentions', :name=>'Dimensions'}]

specifications.each do |specification|
  Specfication.create!(specification)
end

category_specifications=[{:id=>1, :category_id=>4, :specification_id=>1},
                         {:id=>2, :category_id=>4, :specification_id=>2},
                         {:id=>3, :category_id=>1, :specification_id=>3},
                         {:id=>4, :category_id=>1, :specification_id=>4},
                         {:id=>5, :category_id=>2, :specification_id=>2},
                         {:id=>6, :category_id=>2, :specification_id=>5},
                         {:id=>7, :category_id=>5, :specification_id=>2},
                         {:id=>8, :category_id=>5, :specification_id=>6},
                         {:id=>9, :category_id=>6, :specification_id=>2},
                         {:id=>10, :category_id=>6, :specification_id=>7}]

category_specifications.each do |category_specification|
  CategorySpecification.create!(category_specification)
end

product_specifications=[{:id=>1, :product_id=>1, :specification_id=>1, :value=>'183 g (6.46 oz)'},
                        {:id=>2, :product_id=>1, :specification_id=>2, :value=>'720 x 1280 pixels, 5.5 inches (~267 ppi pixel density)'},
                        {:id=>3, :product_id=>2, :specification_id=>3, :value=>'Built-in'},
                        {:id=>4, :product_id=>2, :specification_id=>4, :value=>'Yes'},
                        {:id=>5, :product_id=>3, :specification_id=>2, :value=>'3.2 Inches'},
                        {:id=>6, :product_id=>3, :specification_id=>5, :value=>'4928 x 3280'},
                        {:id=>7, :product_id=>5, :specification_id=>2, :value=>'13.3 Inches'},
                        {:id=>8, :product_id=>5, :specification_id=>6, :value=>'3 MB'},
                        {:id=>9, :product_id=>6, :specification_id=>2, :value=>'8.0 inches'},
                        {:id=>10, :product_id=>6, :specification_id=>7, :value=>'210.6 x 127.7 x 7.9 mm'}]

product_specifications.each do |product_specification|
  ProductSpecification.create!(product_specification)
end