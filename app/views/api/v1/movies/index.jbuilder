json.movies @movies do |movie|
  json.id movie.id
  json.name movie.name
  json.create_at movie.create_at
end
