json.array!(@publications) do |publication|
  json.extract! publication, :id, :instructor_id, :title, :body, :link
  json.url publication_url(publication, format: :json)
end
