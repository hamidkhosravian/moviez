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

      def create
        # it's just a sample of service
        result = UserPurchase::Save.call(
          purchase: find_purchase,
          user: find_user
        );

        raise BadRequestError, result.errors if result.failure?

        @user_purchase = result.user_purchase
        render "api/v1/user_purchases/show", status: :created
      end

      private
        def find_user
          @user = User.find(params[:user_id])
        end

        def find_purchase
          @purchase = Purchase.find(params[:purchase_id])
        end

        def find_user_purchase
          find_user
          @user_purchase = @user.user_purchases.valid_purchases.find(params[:id])
        end
    end
  end
end
