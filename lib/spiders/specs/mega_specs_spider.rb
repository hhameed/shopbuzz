require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'cgi'

class MegaSpecsSpider
  def initialize(url)
    puts url
    @page = Nokogiri::HTML(open(url))
  end
  def getImageLink()
    @page.at_css("[itemprop='image'] img")['src']
  end
  def getBrand()
    @page.at_css("[itemprop='brand']").text()
  end
  def getSpecs()
    specs = @page.css("#laptop_detail tr").map do |spec|
      key = spec.at_css('td:first')
      val = spec.at_css('td:last')
      if (key)
        {key: key.text().strip.gsub(/\A\p{Space}*|\p{Space}*\z/, ''), val: val.text().strip.gsub(/\A\p{Space}*|\p{Space}*\z/, '')}
      else
        nil
      end
    end.reject(&:blank?)
    specs = specs.select do |elem|
      selectSpecs.include?(elem[:key]) && elem[:val] != ""
    end
    specs.map{|elem| [elem[:key], elem[:val]]}.to_h
  end
  def selectSpecs()
    raise NotImplementedError
  end
end