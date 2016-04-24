class PageIndexer < Spider
  def getPageUrls url
    raise NotImplementedError
  end
end