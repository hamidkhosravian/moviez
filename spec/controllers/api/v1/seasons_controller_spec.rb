require "rails_helper"

RSpec.describe Api::V1::SeasonsController, type: :controller do
  let!(:seasons) { create_list(:season, 3) }

  it "when called index" do
    get :index
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)).to have_key("seasons")
    expect(JSON.parse(response.body)["seasons"].size).to eq 3
  end

  context "when called show" do
    it "a season" do
      season = seasons.sample
      get :show, params: { id: season.id }
      puts "****************************************"
      puts JSON.parse(response.body)
      puts "****************************************"
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)["id"]).to eq season.id
    end

    it "could not found season" do
      get :show, params: { id: "invalid" }
      expect(response).to have_http_status(404)
    end
  end
end
