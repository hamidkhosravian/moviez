require 'rails_helper'

RSpec.describe Movie, type: :model do
  context "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
    it { should validate_presence_of :description }
  end
end
