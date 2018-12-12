FactoryBot.define do
  factory :purchase do
    name %w[HD SD].sample
    purchase_type %w[HD SD].sample
    description Faker::Movie.quote
    price Faker::Number.decimal(2)
    purchaseable { nil }
  end
end
