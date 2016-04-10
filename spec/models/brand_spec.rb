require 'rails_helper'

RSpec.describe Brand, type: :model do
  it "should have many products" do
    t = Brand.reflect_on_association(:product)
    expect(t.macro).to eq(:has_many)
  end
end
