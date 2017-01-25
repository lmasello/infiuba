require 'rails_helper'

describe Forms::Procedure, type: :model do
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:form_category) }

  context 'when it is created' do
    let!(:procedure) { create(:procedure) }

    it 'contains its class name in the type attribute' do
      expect(procedure.type).to eq('Forms::Procedure')
    end
  end
end
