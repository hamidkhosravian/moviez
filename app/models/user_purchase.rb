class UserPurchase < ApplicationRecord
  belongs_to :user
  belongs_to :purchase

  scope :valid_purchases, -> { where(created_at: 2.days.ago .. Time.now) }

  validate :valid_user_purchase, on: :create

  private
    def valid_user_purchase
      errors.add(:message, "user purchased this #{purchase.purchaseable_type} before!") unless
        UserPurchase.valid_purchases.where(user: user, purchase: purchase).blank?
    end
end
