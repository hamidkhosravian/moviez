class UserPurchase < ApplicationRecord
  belongs_to :user
  belongs_to :purchase

  scope :valid_purchases, -> { where("created_at <= ?", Time.now + 2.days) }

  validate :valid_user_purchase

  private
    def valid_user_purchase
      errors.add(:user_purchase, message: "user purchased this #{purchase.purchaseable_type} before!") unless
        UserPurchase.valid_purchases.where(user: user, purchase: purchase).blank?
    end
end
