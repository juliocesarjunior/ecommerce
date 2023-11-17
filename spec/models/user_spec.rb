require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "Validates" do
    it "created user" do
      user = build(:user)

      expect(user.valid?).to be true
    end
    it 'is not valid without a email' do
      user = build(:user, email: nil)
      expect(user).to_not be_valid
    end

    it 'is not valid without an name' do
      user = build(:user, name: nil)
      expect(user).to_not be_valid
    end

  end
end
