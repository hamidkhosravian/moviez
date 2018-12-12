class Movie < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :create_by, presence: true

  has_many :purchases, as: :purchaseable
end
