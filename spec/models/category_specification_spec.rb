require 'rails_helper'

RSpec.describe CategorySpecification, type: :model do
  it "should belong to category" do
    t = CategorySpecification.reflect_on_association(:category)
    expect(t.macro).to eq(:belongs_to)
  end
end
