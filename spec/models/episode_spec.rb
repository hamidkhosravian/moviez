require 'rails_helper'

RSpec.describe Episode, type: :model do
  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :description }
  end

  context "associations" do
    it { should belong_to(:season) }
  end
end
