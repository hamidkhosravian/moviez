json.episodes @episodes do |episode|
  json.partial! "/api/v1/episodes/details", locals: {episode: episode}
end
