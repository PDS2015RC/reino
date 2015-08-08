json.array!(@characters) do |character|
  json.extract! character, :id, :name, :xp, :gold, :hair, :skin, :shirt, :pants, :User_id
  json.url character_url(character, format: :json)
end
