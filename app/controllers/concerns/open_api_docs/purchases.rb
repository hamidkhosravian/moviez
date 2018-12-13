module OpenApiDocs::Purchases
  extend ActiveSupport::Concern

  included do
    components do
      path! IdPath: [:id, Integer, desc: "id"]
      path! UserIdPath: [:user_id, Integer, desc: "user_id"]
    end

    api :index, "show all purchases" do
      path  :user_id, Integer
      resp 200, "Moviez response", :json, data: {}
    end

    api :show, "show purchase details" do
      path  :id, Integer
      path  :user_id, Integer
      resp 200, "Moviez response", :json, data: {}
    end
  end
end
