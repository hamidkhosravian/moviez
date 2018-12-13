module OpenApiDocs::Episodes
  extend ActiveSupport::Concern

  included do
    components do
      path! IdPath: [:id, Integer, desc: "id"]
      path! SeasonIdPath: [:season_id, Integer, desc: "season_id"]
    end

    api :index, "show all episodes" do
      path  :season_id, Integer
      resp 200, "Moviez response", :json, data: {}
    end

    api :show, "show episode details" do
      path  :id, Integer
      path  :season_id, Integer
      resp 200, "Moviez response", :json, data: {}
    end
  end
end
