require "rails_helper"

RSpec.describe Season, type: :model do
  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :create_by }
  end

  context "associations" do
    it { should have_many(:episodes) }
    it { should have_many(:purchases) }
  end
end
