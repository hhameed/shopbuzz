class MegaSpiderFactory < SellerSpiderFactory
  def createPageIndexer
    MegaPageIndexer.new
  end
  def createProductExtractor
    MegaProductExtractor.new
  end
end