class ProductExtractor < Spider
  def getProducts url
    raise NotImplementedError
  end
end