require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  it "should format the price correctly for 1 figured number" do
    expect(helper.price_format(1)).to eq('1')
  end

  it "should format the price correctly for 2 figured number" do
    expect(helper.price_format(10)).to eq('10')
  end

  it "should format the price correctly for 3 figured number" do
    expect(helper.price_format(100)).to eq('100')
  end

  it "should format the price correctly for 4 figured number" do
    expect(helper.price_format(1000)).to eq('1,000')
  end

  it "should format the price correctly for 5 figured number" do
    expect(helper.price_format(10000)).to eq('10,000')
  end

  it "should format the price correctly for 6 figured number" do
    expect(helper.price_format(100000)).to eq('1,00,000')
  end

  it "should format the price correctly for 7 figured number" do
    expect(helper.price_format(1000000)).to eq('10,00,000')
  end

  it "should format the price correctly for 8 figured number" do
    expect(helper.price_format(10000000)).to eq('1,00,00,000')
  end
end