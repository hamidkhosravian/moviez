describe Api::V1::MoviesController, type: :routing do
  describe "movies" do
    it "index" do
      expect(get: "api/v1/movies").to route_to(controller: "api/v1/movies", action: "index")
    end

    it "show" do
      expect(get: "api/v1/movies/1").to route_to(controller: "api/v1/movies", action: "show", id: "1")
    end
  end
end
