json.episodes @episodes do |episode|
  json.id episode.id
  json.name episode.name
  json.created_at episode.created_at
end
