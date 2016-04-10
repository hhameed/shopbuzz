require 'rails_helper'

RSpec.describe Specification, type: :model do
  it "should have many product specification" do
    t = Specification.reflect_on_association(:product_specification)
    expect(t.macro).to eq(:has_many)
  end
end
