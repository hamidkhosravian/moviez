json.id @season.id
json.name @season.name
json.description @season.description
json.created_at @season.created_at
json.updated_at @season.updated_at
json.purchases @season.purchases do |purchase|
  json.id purchase.id
  json.name purchase.name
  json.description purchase.description
  json.price purchase.price
end
