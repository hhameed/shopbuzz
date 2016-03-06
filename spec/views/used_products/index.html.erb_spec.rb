require 'rails_helper'

RSpec.describe "used_products/index", type: :view do
  before(:each) do
    assign(:used_products, [
      UsedProduct.create!(),
      UsedProduct.create!()
    ])
  end

  it "renders a list of used_products" do
    render
  end
end
