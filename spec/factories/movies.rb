FactoryBot.define do
  factory :movie do
    name Faker::Name.name
    description Faker::Movie.quote
  end
end
