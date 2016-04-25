class JobsHelper
  def self.createSpiderFactory(seller_id)
    if (seller_id == 1)
      MegaSpiderFactory.new
    else
      raise "Unsupported spider"
    end
  end
  def self.createSpecsSpider(url, cat_id)
    if (cat_id == 1)
      MobiMegaSpecsSpider.new(url)
    elsif (cat_id == 2)
      TabMegaSpecsSpider.new(url)
    elsif (cat_id == 3)
      LapMegaSpecsSpider.new(url)
    else
      raise "Unsupported category"
    end
  end
end