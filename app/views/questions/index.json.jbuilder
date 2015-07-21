json.array!(@questions) do |question|
  json.extract! question, :id, :lesson, :statement, :a, :b, :c, :d
  json.url question_url(question, format: :json)
end
