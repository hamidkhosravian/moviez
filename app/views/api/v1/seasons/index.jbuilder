json.seasons @seasons do |season|
  json.id season.id
  json.name season.name
  json.create_at season.create_at
end
