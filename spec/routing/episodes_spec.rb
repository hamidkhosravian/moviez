describe Api::V1::EpisodesController, :type => :routing do
  describe 'episodes' do
    it 'index' do
      expect(get: 'api/v1/seasons/1/episodes').to route_to(controller: 'api/v1/episodes', action: 'index', season_id: "1")
    end

    it 'show' do
      expect(get: 'api/v1/seasons/1/episodes/1').to route_to(controller: 'api/v1/episodes', action: 'show', id: "1", season_id: "1")
    end
  end
end
