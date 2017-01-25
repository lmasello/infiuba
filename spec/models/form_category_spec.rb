require 'rails_helper'

describe FormCategory, type: :model do
  it { should validate_presence_of(:utility) }
  it { should validate_presence_of(:name) }

  context 'when the form category has a form associated' do
    let!(:form_category) { create(:form_category) }
    let!(:form) { create(:form, form_category: form_category) }

    it 'deletes the form associated when it is removed' do
      expect { form_category.destroy }.to change { Form.count }.by(-1)
    end
  end
end
