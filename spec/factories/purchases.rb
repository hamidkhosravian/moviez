FactoryBot.define do
  factory :purchase do
    name { "MyString" }
    description { "MyText" }
    price { "9.99" }
    purchaseable { nil }
  end
end
