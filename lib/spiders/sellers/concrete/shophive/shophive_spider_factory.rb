class ShophiveSpiderFactory < SellerSpiderFactory
  def createPageIndexer
    ShophivePageIndexer.new
  end
  def createProductExtractor
    ShophiveProductExtractor.new
  end
end