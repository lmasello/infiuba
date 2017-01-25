require 'rails_helper'

describe Utility, type: :model do
  it { should validate_presence_of(:name) }
  let!(:utility) { create(:utility) }
  it { expect(utility.api_key).not_to be_nil }
  it { expect(utility.api_secret).not_to be_nil }

  context 'when the utility has two form_categories' do
    let!(:form_categories) { create_list(:form_category, 2, utility: utility) }

    it 'destroys the form categories when it is deleted' do
      expect { utility.destroy }.to change { FormCategory.count }.by(-2)
    end
  end
end
