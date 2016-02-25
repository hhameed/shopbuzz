# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products=[{:id=>1, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>2, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Sony DSC-TX30', :price=>33499, :image=>'http://shopbuzz.pk/images/products/profile/2052-sony-dsc-tx30-price-in-pakistan.jpg', :brand_id=>2, :category_id=>1},
          {:id=>3, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Nikon D4S', :price=>474999, :image=>'http://shopbuzz.pk/images/products/profile/1911-nikon-d4s-price-in-pakistan.jpg', :brand_id=>3, :category_id=>2},
          {:id=>4, :rating=>4.0, :review_count=>1, :views=>1, :name=>'DSLR NEX-VG30EH', :price=>245999, :image=>'http://shopbuzz.pk/images/products/profile/953-dslr-nex-vg30eh-price-in-pakistan.jpg', :brand_id=>4, :category_id=>3},
          {:id=>5, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Lenovo Yoga 900', :price=>163999, :image=>'http://shopbuzz.pk/images/products/profile/2212-lenovo-yoga-900-price-in-pakistan.jpg', :brand_id=>5, :category_id=>5},
          {:id=>6, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Huawei Media Pad T1 8.0', :price=>18999, :image=>'http://shopbuzz.pk/images/products/profile/2183-huawei-media-pad-t1-8.0-price-in-pakistan.jpg', :brand_id=>6, :category_id=>6},
          {:id=>7, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy ABC', :price=>6473, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>8, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy B', :price=>6423, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>9, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>10, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Sony DSC-TX30', :price=>33499, :image=>'http://shopbuzz.pk/images/products/profile/2052-sony-dsc-tx30-price-in-pakistan.jpg', :brand_id=>2, :category_id=>1},
          {:id=>11, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Nikon D4S', :price=>474999, :image=>'http://shopbuzz.pk/images/products/profile/1911-nikon-d4s-price-in-pakistan.jpg', :brand_id=>3, :category_id=>2},
          {:id=>12, :rating=>4.0, :review_count=>1, :views=>1, :name=>'DSLR NEX-VG30EH', :price=>245999, :image=>'http://shopbuzz.pk/images/products/profile/953-dslr-nex-vg30eh-price-in-pakistan.jpg', :brand_id=>4, :category_id=>3},
          {:id=>13, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Lenovo Yoga 900', :price=>163999, :image=>'http://shopbuzz.pk/images/products/profile/2212-lenovo-yoga-900-price-in-pakistan.jpg', :brand_id=>5, :category_id=>5},
          {:id=>14, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Huawei Media Pad T1 8.0', :price=>18999, :image=>'http://shopbuzz.pk/images/products/profile/2183-huawei-media-pad-t1-8.0-price-in-pakistan.jpg', :brand_id=>6, :category_id=>6},
          {:id=>15, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy ABC', :price=>6473, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>16, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy B', :price=>6423, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>17, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>18, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Sony DSC-TX30', :price=>33499, :image=>'http://shopbuzz.pk/images/products/profile/2052-sony-dsc-tx30-price-in-pakistan.jpg', :brand_id=>2, :category_id=>1},
          {:id=>19, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Nikon D4S', :price=>474999, :image=>'http://shopbuzz.pk/images/products/profile/1911-nikon-d4s-price-in-pakistan.jpg', :brand_id=>3, :category_id=>2},
          {:id=>20, :rating=>4.0, :review_count=>1, :views=>1, :name=>'DSLR NEX-VG30EH', :price=>245999, :image=>'http://shopbuzz.pk/images/products/profile/953-dslr-nex-vg30eh-price-in-pakistan.jpg', :brand_id=>4, :category_id=>3},
          {:id=>21, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Lenovo Yoga 900', :price=>163999, :image=>'http://shopbuzz.pk/images/products/profile/2212-lenovo-yoga-900-price-in-pakistan.jpg', :brand_id=>5, :category_id=>5},
          {:id=>22, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Huawei Media Pad T1 8.0', :price=>18999, :image=>'http://shopbuzz.pk/images/products/profile/2183-huawei-media-pad-t1-8.0-price-in-pakistan.jpg', :brand_id=>6, :category_id=>6},
          {:id=>23, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy ABC', :price=>6473, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>24, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy B', :price=>6423, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>25, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>26, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Sony DSC-TX30', :price=>33499, :image=>'http://shopbuzz.pk/images/products/profile/2052-sony-dsc-tx30-price-in-pakistan.jpg', :brand_id=>2, :category_id=>1},
          {:id=>27, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Nikon D4S', :price=>474999, :image=>'http://shopbuzz.pk/images/products/profile/1911-nikon-d4s-price-in-pakistan.jpg', :brand_id=>3, :category_id=>2},
          {:id=>28, :rating=>4.0, :review_count=>1, :views=>1, :name=>'DSLR NEX-VG30EH', :price=>245999, :image=>'http://shopbuzz.pk/images/products/profile/953-dslr-nex-vg30eh-price-in-pakistan.jpg', :brand_id=>4, :category_id=>3},
          {:id=>29, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Lenovo Yoga 900', :price=>163999, :image=>'http://shopbuzz.pk/images/products/profile/2212-lenovo-yoga-900-price-in-pakistan.jpg', :brand_id=>5, :category_id=>5},
          {:id=>30, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Huawei Media Pad T1 8.0', :price=>18999, :image=>'http://shopbuzz.pk/images/products/profile/2183-huawei-media-pad-t1-8.0-price-in-pakistan.jpg', :brand_id=>6, :category_id=>6},
          {:id=>31, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy ABC', :price=>6473, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>32, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy B', :price=>6423, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>33, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>34, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Sony DSC-TX30', :price=>33499, :image=>'http://shopbuzz.pk/images/products/profile/2052-sony-dsc-tx30-price-in-pakistan.jpg', :brand_id=>2, :category_id=>1},
          {:id=>35, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Nikon D4S', :price=>474999, :image=>'http://shopbuzz.pk/images/products/profile/1911-nikon-d4s-price-in-pakistan.jpg', :brand_id=>3, :category_id=>2},
          {:id=>36, :rating=>4.0, :review_count=>1, :views=>1, :name=>'DSLR NEX-VG30EH', :price=>245999, :image=>'http://shopbuzz.pk/images/products/profile/953-dslr-nex-vg30eh-price-in-pakistan.jpg', :brand_id=>4, :category_id=>3},
          {:id=>37, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Lenovo Yoga 900', :price=>163999, :image=>'http://shopbuzz.pk/images/products/profile/2212-lenovo-yoga-900-price-in-pakistan.jpg', :brand_id=>5, :category_id=>5},
          {:id=>38, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Huawei Media Pad T1 8.0', :price=>18999, :image=>'http://shopbuzz.pk/images/products/profile/2183-huawei-media-pad-t1-8.0-price-in-pakistan.jpg', :brand_id=>6, :category_id=>6},
          {:id=>39, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy ABC', :price=>6473, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>40, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy B', :price=>6423, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>41, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>42, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Sony DSC-TX30', :price=>33499, :image=>'http://shopbuzz.pk/images/products/profile/2052-sony-dsc-tx30-price-in-pakistan.jpg', :brand_id=>2, :category_id=>1},
          {:id=>43, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Nikon D4S', :price=>474999, :image=>'http://shopbuzz.pk/images/products/profile/1911-nikon-d4s-price-in-pakistan.jpg', :brand_id=>3, :category_id=>2},
          {:id=>44, :rating=>4.0, :review_count=>1, :views=>1, :name=>'DSLR NEX-VG30EH', :price=>245999, :image=>'http://shopbuzz.pk/images/products/profile/953-dslr-nex-vg30eh-price-in-pakistan.jpg', :brand_id=>4, :category_id=>3},
          {:id=>45, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Lenovo Yoga 900', :price=>163999, :image=>'http://shopbuzz.pk/images/products/profile/2212-lenovo-yoga-900-price-in-pakistan.jpg', :brand_id=>5, :category_id=>5},
          {:id=>46, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Huawei Media Pad T1 8.0', :price=>18999, :image=>'http://shopbuzz.pk/images/products/profile/2183-huawei-media-pad-t1-8.0-price-in-pakistan.jpg', :brand_id=>6, :category_id=>6},
          {:id=>47, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy ABC', :price=>6473, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>48, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy B', :price=>6423, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>49, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>50, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Sony DSC-TX30', :price=>33499, :image=>'http://shopbuzz.pk/images/products/profile/2052-sony-dsc-tx30-price-in-pakistan.jpg', :brand_id=>2, :category_id=>1},
          {:id=>51, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Nikon D4S', :price=>474999, :image=>'http://shopbuzz.pk/images/products/profile/1911-nikon-d4s-price-in-pakistan.jpg', :brand_id=>3, :category_id=>2},
          {:id=>52, :rating=>4.0, :review_count=>1, :views=>1, :name=>'DSLR NEX-VG30EH', :price=>245999, :image=>'http://shopbuzz.pk/images/products/profile/953-dslr-nex-vg30eh-price-in-pakistan.jpg', :brand_id=>4, :category_id=>3},
          {:id=>53, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Lenovo Yoga 900', :price=>163999, :image=>'http://shopbuzz.pk/images/products/profile/2212-lenovo-yoga-900-price-in-pakistan.jpg', :brand_id=>5, :category_id=>5},
          {:id=>54, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Huawei Media Pad T1 8.0', :price=>18999, :image=>'http://shopbuzz.pk/images/products/profile/2183-huawei-media-pad-t1-8.0-price-in-pakistan.jpg', :brand_id=>6, :category_id=>6},
          {:id=>55, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy ABC', :price=>6473, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>56, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy B', :price=>6423, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>57, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>58, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Sony DSC-TX30', :price=>33499, :image=>'http://shopbuzz.pk/images/products/profile/2052-sony-dsc-tx30-price-in-pakistan.jpg', :brand_id=>2, :category_id=>1},
          {:id=>59, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Nikon D4S', :price=>474999, :image=>'http://shopbuzz.pk/images/products/profile/1911-nikon-d4s-price-in-pakistan.jpg', :brand_id=>3, :category_id=>2},
          {:id=>60, :rating=>4.0, :review_count=>1, :views=>1, :name=>'DSLR NEX-VG30EH', :price=>245999, :image=>'http://shopbuzz.pk/images/products/profile/953-dslr-nex-vg30eh-price-in-pakistan.jpg', :brand_id=>4, :category_id=>3},
          {:id=>61, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Lenovo Yoga 900', :price=>163999, :image=>'http://shopbuzz.pk/images/products/profile/2212-lenovo-yoga-900-price-in-pakistan.jpg', :brand_id=>5, :category_id=>5},
          {:id=>62, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Huawei Media Pad T1 8.0', :price=>18999, :image=>'http://shopbuzz.pk/images/products/profile/2183-huawei-media-pad-t1-8.0-price-in-pakistan.jpg', :brand_id=>6, :category_id=>6},
          {:id=>63, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy ABC', :price=>6473, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4},
          {:id=>64, :rating=>4.4, :review_count=>1, :views=>1, :name=>'Samsung Galaxy B', :price=>6423, :image=>'http://shopbuzz.pk/images/products/profile/143-samsung-galaxy-note-ii-n7100-16gb-price-in-pakistan.jpg', :brand_id=>1, :category_id=>4}
]

products.each do |product|
  Product.create!(product)
end

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

product_reviews=[{:id=>1, :product_id=>1, :name=>'Haider', :email=>nil, :rating=>4, :content=>'i wanna sale my LG G3 D850 genion 32GB nd 3GB RAM Android 5.0 lolipop gray colr 10/10 condition not a single scrtch demand 30000 contct no 03244711555 m from lahore'},
                 {:id=>2, :product_id=>1, :name=>'Kiran', :email=>nil, :rating=>5, :content=>'LG G3 ke specs Qualcomm MSM8975AC Snapdragon 801,Quad-core 2.5 GHz Krait 400,Adreno 330 iss set ko gamers dream come true hona chahiye lekin heavy gaming mein still lag karta..'},
                 {:id=>3, :product_id=>1, :name=>'Balaji', :email=>nil, :rating=>3, :content=>'pros Knock Code IR blaster QHD dislplay UHD video recording cons slow charging fast battery drain no front facing speaker screen not bright enough'},
                 {:id=>4, :product_id=>1, :name=>'Rishabh', :email=>nil, :rating=>4, :content=>'pros: Lg G3 is loaded with features,Quad HD display,4K video recording,laser autofocus cons: UI lag karta hai'},
                 {:id=>5, :product_id=>1, :name=>'Tony', :email=>nil, :rating=>5, :content=>'LG,Samsung achey Android smartphones nahi hain even HTC mein bi heating up lagging aur freezing ke issues hain,mein ab Motorola try karna chahta hoon,friends and family in USA highly recommend it.'},
                 {:id=>6, :product_id=>1, :name=>'John', :email=>nil, :rating=>3, :content=>'Camera pics ke liya acha nai CPU itna heavy hai lekin phir bhi phone lag karta hai battery life achi nai hai'}]

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
  Specification.create!(specification)
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
                        {:id=>10, :product_id=>6, :specification_id=>7, :value=>'210.6 x 127.7 x 7.9 mm'},
                        {:id=>11, :product_id=>7, :specification_id=>1, :value=>'183 g (6.46 oz)'},
                        {:id=>12, :product_id=>7, :specification_id=>2, :value=>'720 x 1280 pixels, 5.5 inches (~267 ppi pixel density)'},
                        {:id=>13, :product_id=>8, :specification_id=>2, :value=>'720 x 1280 pixels, 5.6 inches (~267 ppi pixel density)'}
]

product_specifications.each do |product_specification|
  ProductSpecification.create!(product_specification)
end