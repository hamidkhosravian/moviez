require 'rails_helper'

RSpec.describe Api::V1::PurchasesController, type: :controller do
  let!(:user) { create(:user) }
  let!(:movie) { create(:movie) }
  let!(:purchase) { create(:purchase, purchaseable: movie) }
  let!(:user_purchase) { create(:user_purchase, purchase: purchase, user: user) }

  context "when called index" do
    it "with valid user id" do
      get :index, params: { user_id: user.id }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)).to have_key("purchases")
      expect(JSON.parse(response.body)["purchases"].size).to eq 1
    end

    it "invalid user id" do
      get :index, params: { user_id: "invalid" }
      expect(response).to have_http_status(404)
    end
  end

  describe "when called show" do
    it "a purchase user" do
      get :show, params: { id: user_purchase.id, user_id: user.id }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)["id"]).to eq user_purchase.id
    end

    context "invalid" do
      it "purchase id" do
        get :show, params: { id: "invalid", user_id: user.id }
        expect(response).to have_http_status(404)
      end

      it "purchased more than 2 days" do
        byebug
        user_purchase.update!(created_at: 3.days.ago)
        get :show, params: { id: user_purchase.id, user_id: user.id }
        expect(response).to have_http_status(404)
      end
    end
  end

  describe "when purchase create" do
    it "successfully" do
      movie = create(:movie)
      purchase = create(:purchase, purchaseable: movie)

      post :create, params: { user_id: user.id, purchase_id: purchase.id }

      expect(response).to have_http_status(201)
      expect(JSON.parse(response.body)["purchase"]["id"]).to eq purchase.id
      expect(JSON.parse(response.body)["purchase"]["multimedia"]["id"]).to eq movie.id
    end

    context "is unsuccessfull" do
      it "without purchase_id" do
        post :create, params: { user_id: user.id }
        expect(response).to have_http_status(404)
      end

      it "already is purchased" do
        post :create, params: { user_id: user.id, purchase_id: purchase.id }
        expect(response).to have_http_status(400)
      end
    end
  end
end
