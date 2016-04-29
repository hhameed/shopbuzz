require 'rubygems'
require 'nokogiri'
require 'open-uri'

class ShophivePageIndexer < PageIndexer
  def getPageUrls url
    page = Nokogiri::HTML(open(url))
    summary = page.at_css("p.amount").text().strip
    summary = summary.match(/^Items\ (?<start>\d+)\ to\ (?<size>\d+)\ of\ (?<total>\d+)\ total$/)
    pages = (Float(summary['total'])/Float(summary['size'])).ceil
    (1..pages).map do |i|
      url + "?p=" + i.to_s
    end
  end
end