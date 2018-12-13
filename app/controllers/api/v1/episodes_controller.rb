module Api
  module V1
    class EpisodesController < ApiController
      include ::OpenApiDocs::Episodes

      before_action :find_season
      before_action :find_episode, only: [:show]

      def index
        param! :page, Integer, default: 1
        param! :limit, Integer, default: 10

        @episodes = @season.episodes.order(episode_number: :asc)
        @episodes = @episodes.page(params[:page]).per(params[:limit])
        render "api/v1/episodes/index", status: :ok
      end

      def show
        render "api/v1/episodes/show", status: :ok
      end

      private
        def find_season
          @season = Season.find(params[:season_id])
        end

        def find_episode
          @episode = Episode.find(params[:id])
        end
    end
  end
end
