FactoryBot.define do
  factory :movie do
    name Faker::Name.name
    description Faker::Movie.quote
    create_by Faker::Name.name
  end
end
