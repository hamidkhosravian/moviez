json.seasons @seasons do |season|
  json.id season.id
  json.name season.name
  json.create_by season.create_by
  json.created_at season.created_at
end
