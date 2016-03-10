require 'rails_helper'

RSpec.describe "used_products/edit", type: :view do
  before(:each) do
    @used_product = assign(:used_product, UsedProduct.create!())
  end

  it "renders the edit used_product form" do
    render

    assert_select "form[action=?][method=?]", used_product_path(@used_product), "post" do
    end
  end
end
