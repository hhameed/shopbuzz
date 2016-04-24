require 'rubygems'
require 'nokogiri'
require 'open-uri'

class MegaProductExtractor < ProductExtractor
  def getProducts url
    page = Nokogiri::HTML(open(url))
    page.css('.lap_thu_box').map do |product|
      url = product.at_css('h3 a')['href'].strip
      name = product.at_css('h3').text.strip
      price = product.at_css('.cat_price').text.strip.gsub(",","")
      price = price.match(/^(?<price>\d+).*$/)
      {url: url, name: name, price: price.nil? ? 0 : price['price']}
    end
  end
end