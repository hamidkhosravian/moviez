module Api
  module V1
    class MoviesController < ApiController
      before_action :find_movie, except: [:index]

      def index
        param! :page, Integer, default: 1
        param! :limit, Integer, default: 10

        @movies = Movie.all.page(params[:page]).per(params[:limit])
        render "api/v1/movies/index", status: :ok
      end

      def show
        render "api/v1/movies/show", status: :ok
      end

      private
        def find_movie
          @movie = Movie.find(params[:id])
        end
    end
  end
end
