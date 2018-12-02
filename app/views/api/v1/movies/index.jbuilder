json.movies @movies do |movie|
  json.id movie.id
  json.name movie.name
  json.created_at movie.created_at
end
