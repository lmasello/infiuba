require 'rails_helper'

describe Forms::Claim, type: :model do
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:form_category) }

  context 'when it is created' do
    let!(:claim) { create(:claim) }

    it 'contains its class name in the type attribute' do
      expect(claim.type).to eq('Forms::Claim')
    end
  end
end
