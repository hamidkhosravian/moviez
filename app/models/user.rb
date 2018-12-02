class User < ApplicationRecord
  validates :email, presence: true

  has_many :user_purchases
end
