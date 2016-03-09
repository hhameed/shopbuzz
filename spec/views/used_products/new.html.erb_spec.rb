require 'rails_helper'

RSpec.describe "used_products/new", type: :view do
  before(:each) do
    assign(:used_product, UsedProduct.new())
  end

  it "renders new used_product form" do
    render

    assert_select "form[action=?][method=?]", used_products_path, "post" do
    end
  end
end
