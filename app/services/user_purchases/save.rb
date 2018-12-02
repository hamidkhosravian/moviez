module UserPurchases
  class Save
    include Peafowl

    attribute :user, User
    attribute :purchase, Purchase

    validates :user, presence: true
    validates :purchase, presence: true

    def call
      user_purchase = ::UserPurchase.new
      user_purchase.purchase = purchase
      user_purchase.user = user
      user_purchase.save!

      context[:user_purchase] = user_purchase
    end
  end
end
