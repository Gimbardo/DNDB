require 'rails_helper'

RSpec.describe User, type: :model do

  let(:admin_user){ FactoryBot.create(:user, :admin) }
  let(:normal_user){ FactoryBot.create(:user) }

  describe "method admin?" do
    it 'returns true if user is admin' do
      expect(admin_user.admin?).to be_truthy
    end
    it "returns false if user isn't admin" do
      expect(normal_user.admin?).to be_falsey
    end
  end

end
