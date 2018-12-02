FactoryBot.define do
  factory :purchase do
    name ["HD", "SD"].sample
    description Faker::Movie.quote
    price Faker::Number.decimal(2)
    purchaseable { nil }
  end
end
