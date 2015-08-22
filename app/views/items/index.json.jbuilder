json.array!(@items) do |item|
  json.extract! item, :id, :name, :img, :price
  json.url item_url(item, format: :json)
end
