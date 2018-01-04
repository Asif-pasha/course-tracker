json.array!(@course_ratings) do |course_rating|
  json.extract! course_rating, :id, :student_id, :course_id, :rating
  json.url course_rating_url(course_rating, format: :json)
end
