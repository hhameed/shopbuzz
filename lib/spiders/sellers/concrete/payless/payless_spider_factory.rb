class PaylessSpiderFactory < SellerSpiderFactory
  def createPageIndexer
    PaylessPageIndexer.new
  end
  def createProductExtractor
    PaylessProductExtractor.new
  end
end