json.episodes @episodes do |episode|
  json.id episode.id
  json.name episode.name
  json.create_at episode.create_at
end
