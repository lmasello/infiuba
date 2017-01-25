require 'rails_helper'

describe PointTransaction, type: :model do
  it { should validate_presence_of(:account_id) }
  it { should validate_presence_of(:points) }
  it { should validate_presence_of(:period) }

  subject(:point_transaction) do
    described_class.new(account: account, points: points, period: period)
  end

  let(:account) { create(:account) }
  let(:points) { Faker::Number.number(2) }
  let(:period) { Faker::Number.number(6) }

  it { is_expected.to be_valid }

  describe '#create' do
    let!(:previous_points) {  account.total_points }

    context 'when account already has points accumulated and sums points,' do
      let!(:other_point_transaction) { create(:point_transaction, account: account, points: 10) }
      it 'sums points correctly' do
        expect(account.total_points).to eq previous_points + other_point_transaction.points
      end
    end

    context 'when account already has points accumulated and substracts points,' do
      let!(:other_point_transaction) { create(:point_transaction, account: account, points: -10) }
      it 'substracts points correctly' do
        expect(account.total_points).to eq previous_points + other_point_transaction.points
      end
    end
  end
end
