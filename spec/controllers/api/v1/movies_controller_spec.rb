require 'rails_helper'

RSpec.describe Api::V1::MoviesController, type: :controller do
  let!(:movies) { create_list(:movie, 3) }

  it "when called index" do
    get :index
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)).to have_key("movies")
    expect(JSON.parse(response.body)["movies"].size).to eq 3
  end

  context "when called show" do
    it 'a movie' do
      movie = movies.sample
      get :show, params: { id: movie.id }
      expect(response).to have_http_status(200)
      expect(JSON.parse(response.body)["id"]).to eq movie.id
    end

    it 'could not found movie' do
      get :show, params: { id: 'invalid' }
      expect(response).to have_http_status(404)
    end
  end
end
