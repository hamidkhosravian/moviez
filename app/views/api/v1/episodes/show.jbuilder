json.partial! "/api/v1/episodes/details", locals: {episode: @episode}
json.description @episode.description
json.updated_at @episode.updated_at
