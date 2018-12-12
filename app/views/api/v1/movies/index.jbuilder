json.movies @movies do |movie|
  json.id movie.id
  json.name movie.name
  json.create_by movie.create_by
  json.created_at movie.created_at
end
