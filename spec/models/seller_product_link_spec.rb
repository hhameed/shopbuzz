require 'rails_helper'

RSpec.describe SellerProductLink, type: :model do
  it "should belong to product" do
    t = SellerProductLink.reflect_on_association(:product)
    expect(t.macro).to eq(:belongs_to)
  end
end