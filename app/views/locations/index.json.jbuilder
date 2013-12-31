json.array!(@locations) do |location|
  json.extract! location, :id, :address, :latitude, :longitude, :name, :vender, :website, :phone, :url
  json.url location_url(location, format: :json)
end
