require 'rails_helper'

 describe Product do

   it "returns searched products for correct input" do
     product1= Product.create(
         id: "1",
         rating: "4",
         name: "Samsung Galaxy Ace",
         category_id: "4"
     )
     product2= Product.create(
         id: "2",
         rating: "4",
         name: "Samsung Galaxy Y",
         category_id: "4"
     )
     product3= Product.create(
         id: "3",
         rating: "3",
         name: "Apple iphone",
         category_id: "4"
     )
     expect(Product.search("Sam")).to eq [product1,product2]
   end
   it "returns searched products for empty input" do
     product1= Product.create(
         id: "1",
         rating: "4",
         name: "Samsung Galaxy Ace",
         category_id: "4"
     )
     product2= Product.create(
         id: "2",
         rating: "4",
         name: "Samsung Galaxy Ace",
         category_id: "4"
     )
     product3= Product.create(
         id: "3",
         rating: "3",
         name: "Apple iphone",
         category_id: "4"
     )
     expect(Product.search("")).to eq [product1,product2,product3]
   end

 end