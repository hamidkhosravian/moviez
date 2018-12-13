module Api
  module V1
    class PurchasesController < ApiController
      include ::OpenApiDocs::Purchases

      before_action :find_user
      before_action :find_user_purchases, only: [:index, :show]

      def index
        param! :page, Integer, default: 1
        param! :limit, Integer, default: 10

        @user_purchases = @user_purchases.order(created_at: :asc).page(params[:page]).per(params[:limit])
        render "api/v1/user_purchases/index", status: :ok
      end

      def show
        @user_purchase = @user_purchases.find(params[:id])
        render "api/v1/user_purchases/show", status: :ok
      end

      def create
        # it's just a sample of service
        result = UserPurchases::Save.call(
          purchase: find_purchase,
          user: @user
        )

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

        def find_user_purchases
          @user_purchases = @user.user_purchases.valid_purchases
        end
    end
  end
end
