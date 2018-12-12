require "rails_helper"

RSpec.describe Episode, type: :model do
  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
    it { should validate_presence_of :episode_number }
    it { should validate_uniqueness_of(:episode_number).scoped_to(:season_id) }
  end

  context "associations" do
    it { should belong_to(:season) }
  end
end
