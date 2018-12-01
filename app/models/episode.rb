class Episode < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  belongs_to :season
end
