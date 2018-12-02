module Api
  module V1
    class PurchasesController < ApiController
      before_action :find_user
      before_action :find_user_purchase, except: [:index]

      def index
        param! :page, Integer, default: 1
        param! :limit, Integer, default: 10

        @user_purchases = @user.user_purchases.valid_purchases
        @user_purchases = @user_purchases.page(params[:page]).per(params[:limit])
        render "api/v1/user_purchases/index", status: :ok
      end

      def show
        render "api/v1/user_purchases/show", status: :ok
      end

      private
        def find_user
          @user = User.find(params[:id])
        end

        def find_user_purchase
          @user_purchase = @user.user_purchases.valid_purchases.find(params[:id])
        end
    end
  end
end
