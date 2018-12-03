describe Api::V1::PurchasesController, type: :routing do
  describe "seasons" do
    it "index" do
      expect(get: "api/v1/users/1/purchases").to route_to(controller: "api/v1/purchases", action: "index", user_id: "1")
    end

    it "show" do
      expect(get: "api/v1/users/1/purchases/1").to route_to(controller: "api/v1/purchases", action: "show", user_id: "1", id: "1")
    end

    it "index" do
      expect(post: "api/v1/users/1/purchases").to route_to(controller: "api/v1/purchases", action: "create", user_id: "1")
    end
  end
end
