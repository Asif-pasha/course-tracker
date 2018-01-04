json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :name, :email, :bio, :mobile
  json.url instructor_url(instructor, format: :json)
end
