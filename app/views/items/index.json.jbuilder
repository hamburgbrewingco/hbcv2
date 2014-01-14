json.array!(@items) do |item|
  json.extract! item, :id, :name, :price, :description, :category
  json.url item_url(item, format: :json)
end
