json.id @movie.id
json.name @movie.name
json.description @movie.description
json.created_at @movie.created_at
json.updated_at @movie.updated_at
json.purchases @movie.purchases do |purchase|
  json.id purchase.id
  json.name purchase.name
  json.description purchase.description
  json.price purchase.price
end
