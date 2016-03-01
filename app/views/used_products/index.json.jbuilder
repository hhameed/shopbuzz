json.array!(@used_products) do |used_product|
  json.extract! used_product, :id
  json.url used_product_url(used_product, format: :json)
end
