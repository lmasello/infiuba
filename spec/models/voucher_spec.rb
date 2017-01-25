require 'rails_helper'

describe Voucher, type: :model do
  it { should validate_presence_of(:owner_type) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:points) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:discount_type) }
  it { should validate_presence_of(:discount) }
  it { should validate_presence_of(:usage_limit) }
  let(:voucher) { create(:voucher) }
  it { expect(voucher.status).to eq 'active' }
  it { expect(voucher.usage_limit).to eq 'unlimited' }

  describe 'scopes' do
    context 'when looking for all vouchers' do
      let!(:utility) { create(:utility) }
      let!(:voucher1) { create(:voucher, utility: utility, status: 'active') }
      let!(:voucher2) { create(:voucher, utility: utility, status: 'deleted') }
      let!(:voucher3) { create(:voucher, owner_type: 'general', status: 'active') }

      it 'returns the two active ones' do
        expect(Voucher.all.count).to eq 2
      end
    end

    context 'when looking for all utility\'s vouchers' do
      let!(:utility) { create(:utility) }
      let!(:voucher1) { create(:voucher, utility: utility, status: 'active') }
      let!(:voucher2) { create(:voucher, utility: utility, status: 'deleted') }
      let!(:voucher3) { create(:voucher, owner_type: 'general', status: 'active') }

      it 'returns the active one for the utility' do
        expect(Voucher.for_utility(utility).count).to eq 1
      end
    end
  end
end
