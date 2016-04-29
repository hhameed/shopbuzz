class SellerSpiderFactory
  def createPageIndexer
    raise NotImplementedError
  end
  def createProductExtractor
    raise NotImplementedError
  end
end