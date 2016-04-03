require 'rails_helper'

<<<<<<< HEAD
<<<<<<< HEAD
RSpec.describe ComparesController, type: :feature do

  before :each do
    @samsung = Product.create(
=======
=======
>>>>>>> 6606db1bfd5c9e8861eb7bb5e2f074568167c571
RSpec.describe ComparesController, type: :controller do

  before :each do
    @samsung = Product.create(
        id: '1',
<<<<<<< HEAD
>>>>>>> sellusedproducts
=======
>>>>>>> 6606db1bfd5c9e8861eb7bb5e2f074568167c571
        name: 'galaxy',
        price: '500',
        image: 'xyz',
        rating: 5,
        review_count: 10,
        views: 50,
        brand_id: 3,
        category_id:4
    )
    @apple = Product.create(
<<<<<<< HEAD
<<<<<<< HEAD
=======
        id: '2',
>>>>>>> sellusedproducts
=======
        id: '2',

>>>>>>> 6606db1bfd5c9e8861eb7bb5e2f074568167c571
        name: 'iphone',
        price: '600',
        image: 'xyz',
        rating: 5,
        review_count: 10,
        views: 50,
        brand_id:4,
        category_id:4
    )
<<<<<<< HEAD
<<<<<<< HEAD
    @mobile = Category.create(id:4)
  end
describe "compare" do
  it "compares two different products" do
     
  end
end


=======
=======
>>>>>>> 6606db1bfd5c9e8861eb7bb5e2f074568167c571
    @sony = Product.create(
        id: '3',
        name: 'sony alpha',
        price: '6000',
        image: 'abcz',
        rating: 5,
        review_count: 10,
        views: 50,
        brand_id:3,
        category_id:5
    )


    @mobile = Category.create(id:4)
    @compared = Compare.create_spec_hash(@samsung,@apple)

  end
  describe 'paramteres passed' do
    context 'compare params' do
      it "product 1 is correct" do
        get :compare, {:product1=>1}
        expect(assigns(:product1)).to eq(@samsung)
      end
      it "product 2 is correct" do
        get :compare, {:product2=>2}
        expect(assigns(:product2)).to eq(@apple)
      end
      it "product 1 is nil" do
        get :compare, {:product1=>nil}
        expect { raise StandardError }.to raise_error(StandardError)
      end
      it "product 2 is nil" do
        get :compare, {:product2=>nil}
        expect { raise StandardError }.to raise_error(StandardError)
      end
      it "product 1 and product 2 are equal" do
        get :compare, {:product1=> 1, :product2=>1}
        expect { raise StandardError }.to raise_error(StandardError)
      end
      it "product 1 and product 2 are not of same category" do
        get :compare, {:product1=> 1, :product2=>3}
        expect { raise StandardError }.to raise_error(StandardError)
      end
      it "product 1 and product 2 are different products" do
        get :compare, {:product1=> 1, :product2=>2}
        expect(assigns(:product1)).to eq(@samsung)
        expect(assigns(:product2)).to eq(@apple)

      end
    end
  end
<<<<<<< HEAD
>>>>>>> sellusedproducts
=======
>>>>>>> 6606db1bfd5c9e8861eb7bb5e2f074568167c571
end