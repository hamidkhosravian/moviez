class Purchase < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  belongs_to :purchaseable, polymorphic: true
  has_many :user_purchases

  enum purchase_type: [:HD, :SD]
end
