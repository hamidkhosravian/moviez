require "rails_helper"

RSpec.describe UserPurchase, type: :model do
  context "associations" do
    it { should belong_to(:user) }
    it { should belong_to(:purchase) }
  end
end
