module Api
  module V1
    class SeasonsController < ApiController
      include ::OpenApiDocs::Seasons

      before_action :find_season, except: [:index]

      def index
        param! :page, Integer, default: 1
        param! :limit, Integer, default: 10

        @seasons = Season.all.order(create_by: :asc)
        @seasons = @seasons.page(params[:page]).per(params[:limit])
        render "api/v1/seasons/index", status: :ok
      end

      def show
        render "api/v1/seasons/show", status: :ok
      end

      private
        def find_season
          @season = Season.find(params[:id])
        end
    end
  end
end
