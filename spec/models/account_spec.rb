require 'rails_helper'

describe Account, type: :model do
  it { should validate_presence_of(:utility_id) }
  it { should validate_presence_of(:client_number) }

  describe 'period_points' do
    context 'when having points transactions from different periods in the same account' do
      let!(:account) { create(:account) }
      let!(:same_period_point_transaction) { create(:point_transaction, account: account) }
      let!(:same_period_point_transaction_two) { create(:point_transaction, account: account) }
      let!(:other_point_transaction) do
        create(:point_transaction, account: account,
                                   created_at: 2.months.ago)
      end

      it 'gets only the actual period accumulated points' do
        expect(account.period_points).to eq same_period_point_transaction.points +
                                            same_period_point_transaction_two.points
      end

      it 'deletes the point transactions associated when the account is deleted' do
        expect { account.destroy }.to change { PointTransaction.count }.by(-3)
      end
    end
  end

  context 'when the account has a user associated' do
    let!(:user) { create(:user) }
    let(:account) { create(:account) }
    let!(:account_user) { create(:account_user, account: account, user: user, main: true) }

    it 'destroys the association when it is deleted' do
      expect { account.destroy }.to change { AccountUser.count }.by(-1)
    end
  end

  context 'when the account has two bills associated' do
    let(:account) { create(:account) }
    let!(:bills) { create_list(:bill, 2, account: account) }

    it 'destroys the association when it is deleted' do
      expect { account.destroy }.to change { Bill.count }.by(-2)
    end
  end

  describe 'check_synchronization' do
    context 'when everything is synchronized'
    let!(:account) do
      create(:account, account_data_synchronized: true,
                       bills_synchronized: true, claims_synchronized: true)
    end

    it 'changes from validated to synchronized' do
      expect { account.update_attributes(procedures_synchronized: true) }
        .to change { account.synchronization_state }.from('validated').to('synchronized')
    end
  end

  describe 'default scope synchronization_state' do
    context 'when is validated' do
      let!(:account) { create(:account, synchronization_state: 'validated') }

      it 'finds the account' do
        expect(Account.all).to_not be_empty
      end
    end

    context 'when is synchronized' do
      let!(:account) { create(:account, synchronization_state: 'synchronized') }

      it 'finds the account' do
        expect(Account.all).to_not be_empty
      end
    end

    context 'when is unsubscribed' do
      let!(:account) { create(:account, synchronization_state: 'unsubscribed') }

      it 'does not find the account' do
        expect(Account.all).to be_empty
      end
    end
  end

  describe 'default scope account_user status' do
    let(:user) { create(:user) }

    context 'when the relation is active' do
      let(:account) { create(:account, synchronization_state: 'synchronized') }
      let!(:account_user) do
        create(:account_user, user: user, account: account, status: 'active')
      end

      it 'finds the account' do
        expect(user.accounts).to_not be_empty
      end
    end

    context 'when the relation is deleted' do
      let(:account) { create(:account, synchronization_state: 'synchronized') }
      let!(:account_user) do
        create(:account_user, user: user, account: account, status: 'deleted')
      end

      it 'does not find the account' do
        expect(user.accounts).to be_empty
      end
    end
  end
end
