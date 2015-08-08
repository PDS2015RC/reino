json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :url, :subject
  json.url lesson_url(lesson, format: :json)
end
