json.seasons @seasons do |season|
  json.id season.id
  json.name season.name
  json.created_at season.created_at
end
