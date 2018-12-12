json.id @movie.id
json.name @movie.name
json.description @movie.description
json.create_by @movie.create_by
json.created_at @movie.created_at
json.updated_at @movie.updated_at
json.purchases @movie.purchases do |purchase|
  json.partial! '/api/v1/user_purchases/details', locals: {purchase: purchase}
end
