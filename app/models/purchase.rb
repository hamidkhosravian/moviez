class Purchase < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  belongs_to :purchaseable, polymorphic: true

  enum type: [:HD, :SD]
end
