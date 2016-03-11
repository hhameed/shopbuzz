require 'rails_helper'

RSpec.describe "used_products/show", type: :view do
  before(:each) do
    @used_product = assign(:used_product, UsedProduct.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
