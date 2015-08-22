json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :User_id
  json.url inventory_url(inventory, format: :json)
end
