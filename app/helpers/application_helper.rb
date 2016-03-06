module ApplicationHelper
  def price_format(price)
    "#{price.to_s.gsub(/(\d+?)(?=(\d\d)+(\d)(?!\d))(\.\d+)?/, "\\1,")}"
  end
end
