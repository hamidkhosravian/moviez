require 'rails_helper'

RSpec.describe Api::V1::EpisodesController, type: :controller do
  let!(:season) { create(:season) }
  let!(:episodes) { create_list(:episode, 3, season: season) }

  context "when called" do
    it "with valid season" do
      get :index, params: { season_id: season.id }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)).to have_key("episodes")
      expect(JSON.parse(response.body)["episodes"].size).to eq 3
    end

    it "with invalid season" do
      get :index, params: { season_id: 'invalid' }
      expect(response).to have_http_status(404)
    end
  end

  context "when called show" do
    it 'an episode' do
      episode = episodes.sample
      get :show, params: { id: episode.id, season_id: season.id }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)["id"]).to eq episode.id
    end

    it 'could not found episode' do
      get :show, params: { id: 'invalid', season_id: season.id }
      expect(response).to have_http_status(404)
    end
  end
end
