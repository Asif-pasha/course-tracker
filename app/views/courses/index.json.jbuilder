json.array!(@courses) do |course|
  json.extract! course, :id, :name, :instructor_id, :description
  json.url course_url(course, format: :json)
end
