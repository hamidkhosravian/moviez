module OpenApiDocs::Seasons
  extend ActiveSupport::Concern

  included do
    components do
      path! IdPath: [:id, Integer, desc: "id"]
    end

    api :index, "show all seasons" do
      resp 200, "Moviez response", :json, data: {}
    end

    api :show, "show season details" do
      path  :id, Integer
      resp 200, "Moviez response", :json, data: {}
    end
  end
end
