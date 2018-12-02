FactoryBot.define do
  factory :episode do
    name Faker::Name.name
    description Faker::Movie.quote
    season { create(:season) }
  end
end
