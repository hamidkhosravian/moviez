class Episode < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :episode_number, presence: true, uniqueness: { scope: :season_id }

  belongs_to :season
end
