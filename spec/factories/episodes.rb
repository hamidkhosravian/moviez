FactoryBot.define do
  factory :episode do
    name Faker::Name.name
    description Faker::Movie.quote
    season { create(:season) }
    episode_number Faker::Number.unique.number(3)
  end
end
