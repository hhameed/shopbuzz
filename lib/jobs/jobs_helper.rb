class JobsHelper
  def self.createSpiderFactory(seller_id)
    if (seller_id == 1)
      MegaSpiderFactory.new
    else
      raise "Unsupported spider"
    end
  end
  def self.createSpecsSpider(url, cat_id)
    if (cat_id == 4)
      MobiMegaSpecsSpider.new(url)
    elsif (cat_id == 6)
      TabMegaSpecsSpider.new(url)
    elsif (cat_id == 5)
      LapMegaSpecsSpider.new(url)
    else
      raise "Unsupported category"
    end
  end
end