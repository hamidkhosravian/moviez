require "rails_helper"

RSpec.describe User, type: :model do
  context "validations" do
    it { should validate_presence_of :email }
    it { should have_many(:user_purchases) }
  end
end
