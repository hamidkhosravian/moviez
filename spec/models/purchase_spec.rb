require "rails_helper"

RSpec.describe Purchase, type: :model do
  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
    it { should validate_presence_of :description }
  end

  context "associations" do
    it { should belong_to(:purchaseable) }
    it { should have_many(:user_purchases) }
  end
end
