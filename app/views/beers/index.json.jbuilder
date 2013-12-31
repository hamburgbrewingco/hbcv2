json.array!(@beers) do |beer|
  json.extract! beer, :id, :description, :name, :type, :alcohol
  json.url beer_url(beer, format: :json)
end
