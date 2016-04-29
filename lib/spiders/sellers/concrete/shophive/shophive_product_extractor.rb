require 'rubygems'
require 'nokogiri'
require 'open-uri'

class ShophiveProductExtractor < ProductExtractor
  def getProducts url
    page = Nokogiri::HTML(open(url))
    page.css('li.item').map do |product|
      url = product.at_css('h2 a')['href'].strip
      name = product.at_css('h2').text.strip
      price = product.at_css('.special-price')
      if price.nil?
        price = product.at_css('.regular-price')
      end
      if price.nil?
        price = product.at_css('.old-price')
      end
      if !price.nil?
        price = price.text.strip.gsub(",","").match(/(?<price>\d+).*/)
      end

      {url: url, name: name, price: price.nil? ? 0 : price['price']}
    end
  end
end