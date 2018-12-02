describe Api::V1::SeasonsController, type: :routing do
  describe "seasons" do
    it "index" do
      expect(get: "api/v1/seasons").to route_to(controller: "api/v1/seasons", action: "index")
    end

    it "show" do
      expect(get: "api/v1/seasons/1").to route_to(controller: "api/v1/seasons", action: "show", id: "1")
    end
  end
end
