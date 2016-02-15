# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products=[{:id=>1, :rating=>4.0, :review_count=>1, :views=>1, :name=>'Samsung Galaxy Note II N7100 16GB', :price=>34999, :image=>'N7100.JPG', :brand_id=>1, :category_id=>4},
                    {:id=>2, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Sony DSC-TX30', :price=>33499, :image=>'TX30.JPG', :brand_id=>2, :category_id=>1},
                    {:id=>3, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Nikon D4S', :price=>474999, :image=>'Nikon D4S.JPG', :brand_id=>3, :category_id=>2},
                    {:id=>4, :rating=>4.0, :review_count=>1, :views=>1, :name=>'DSLR NEX-VG30EH', :price=>245999, :image=>'VG30EH.JPG', :brand_id=>4, :category_id=>3},
                    {:id=>5, :rating=>5.0, :review_count=>1, :views=>1, :name=>'Lenovo Yoga 900', :price=>163999, :image=>'Yoga.JPG', :brand_id=>5, :category_id=>5},
                    {:id=>6, :rating=>3.0, :review_count=>1, :views=>1, :name=>'Huawei Media Pad T1 8.0', :price=>18999, :image=>'T1.JPG', :brand_id=>6, :category_id=>6}]

products.each do |product|
    Product.create!(product)
  end