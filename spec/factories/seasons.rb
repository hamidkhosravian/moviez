FactoryBot.define do
  factory :season do
    name Faker::Name.name
    description Faker::Movie.quote
  end
end
