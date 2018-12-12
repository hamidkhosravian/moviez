FactoryBot.define do
  factory :season do
    name Faker::Name.name
    description Faker::Movie.quote
    create_by Faker::Name.name
  end
end
