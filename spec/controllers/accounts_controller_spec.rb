require 'rails_helper'

describe ActivitiesController, type: :controller do
  describe 'GET #index' do
    subject { get :index }

    context 'when there are activities' do
      let!(:activities) { create_list(:activity, 4) }
      before { subject }

      it 'succeeds' do
        expect(response).to have_http_status(:ok)
      end

      it 'Returns an array with the activities' do
        expected = ActiveModel::Serializer::CollectionSerializer.new(
          activities, each_serializer: ActivitySerializer
        ).to_json
        expect(response_body.to_json).to eq expected
      end
    end

    context 'when there is an activity which contains albums' do
      let!(:activity) { create(:activity) }
      let!(:albums) { create_list(:album, 3, activity: activity) }
      before { subject }

      it 'succeeds' do
        expect(response).to have_http_status(:ok)
      end

      it 'Returns an array with one activity' do
        expect(response_body.size).to eq 1
      end

      it 'Returns an activity with albums' do
        expect(response_body.first['albums'].size).to eq albums.size
      end
    end
  end
end
