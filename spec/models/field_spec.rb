require 'rails_helper'

describe Field, type: :model do
  subject(:field) do
    Field.new(
      title: title, order: order, description: description, key: key,
      type: type, required: required, format: format
    )

    let(:title) { Faker::Name.first_name }
    let(:order) { Faker::Number.number(1) }
    let(:description) { Faker::Number.decimal(2) }
    let(:key) { title }
    let(:type) { Faker::Name.last_name }
    let(:required) { Faker::Boolean.boolean }
    let(:format) { Faker::Name.name }

    it { is_expected.to be_valid }
  end
end
