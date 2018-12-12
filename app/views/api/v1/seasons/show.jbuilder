json.id @season.id
json.name @season.name
json.description @season.description
json.create_by @season.create_by
json.created_at @season.created_at
json.updated_at @season.updated_at
json.episodes @season.episodes do |episode|
  json.partial! "/api/v1/episodes/details", locals: {episode: episode}
end
json.purchases @season.purchases do |purchase|
  json.partial! "/api/v1/user_purchases/details", locals: {purchase: purchase}
end
