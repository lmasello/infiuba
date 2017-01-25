require 'rails_helper'

describe Form, type: :model do
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:form_category) }

  context 'when the form has a field_detail' do
    let!(:form) { create(:form) }
    let!(:field_detail) { create(:field_detail, form: form) }

    it 'deletes the field details when it is removed' do
      expect { form.destroy }.to change { FieldDetail.count }.by(-1)
    end
  end

  context 'when the form has 2 fields' do
    let!(:form) { create(:form) }
    let!(:fields) { create_list(:field, 2, form: form) }

    it 'deletes the fields when it is removed' do
      expect { form.destroy }.to change { Field.count }.by(-2)
    end
  end

  context 'when the form has a form_response' do
    let!(:form) { create(:form) }
    let!(:form_response) { create(:form_response, :with_input_values, form: form) }

    it 'deletes the field details when it is removed' do
      expect { form.destroy }.to change { FormResponse.count }.by(-1)
    end
  end

  describe 'scope claims' do
    context 'when having claims and procedures' do
      let!(:utility) { create(:utility) }
      let!(:form_category) { create(:form_category, utility: utility) }
      let!(:procedure) { create(:procedure, form_category: form_category) }
      let!(:claim) { create(:claim, form_category: form_category) }

      it 'returns only the claim' do
        expect(utility.forms.claims.first.to_json).to eq claim.to_json
      end

      it 'returns two claims' do
        create(:claim, form_category: form_category)
        expect(utility.forms.claims.count).to eq 2
      end
    end
  end
end
