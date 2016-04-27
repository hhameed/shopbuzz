require 'rubygems'
require 'nokogiri'
require 'open-uri'

class PaylessProductExtractor < ProductExtractor
  def getProducts url
    page = Nokogiri::HTML(open(url))
    page.css('.singleProduct').map do |product|
      url = product.at_css('.name a')['href'].strip
      name = product.at_css('.name a').text.strip
      price = product.at_css('.price-new')
      if price.nil?
        price = product.at_css('.price')
      end
      if !price.nil?
        price = price.text.strip.gsub(",","").match(/(?<price>\d+).*/)
      end
      {url: url, name: name, price: price.nil? ? 0 : price['price']}
    end
  end
end