require 'rails_helper'

RSpec.describe SellerProductLinkView, type: :model do
  it "should belong to SellerProductLink" do
    t = SellerProductLinkView.reflect_on_association(:seller_product_link)
    expect(t.macro).to eq(:belongs_to)
  end
end
