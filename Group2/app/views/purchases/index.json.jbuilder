json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :name, :price, :item_number
  json.url purchase_url(purchase, format: :json)
end
