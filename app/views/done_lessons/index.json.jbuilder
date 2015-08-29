json.array!(@done_lessons) do |done_lesson|
  json.extract! done_lesson, :id, :Lesson_id, :Character_id
  json.url done_lesson_url(done_lesson, format: :json)
end
