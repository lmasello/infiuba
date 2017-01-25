require 'rails_helper'

describe User, type: :model do
  it { should validate_presence_of(:email) }

  context 'when the user has an account' do
    let!(:user) { create(:user) }
    let(:account) { create(:account) }
    let!(:account_user) { create(:account_user, account: account, user: user, main: true) }

    it 'destroys the association when it is deleted' do
      expect { user.destroy }.to change { AccountUser.count }.by(-1)
    end
  end
end
