json.array!(@seller_reviews) do |seller_review|
  json.extract! seller_review, :id
  json.url seller_review_url(seller_review, format: :json)
end
