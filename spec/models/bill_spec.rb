require 'rails_helper'

describe Bill, type: :model do
  subject(:bill) do
    described_class.new(
      account: account, amount: amount, consumption: consumption, date: date, number: number,
      first_expiration: first_expiration, second_expiration: second_expiration, status: status
    )

    let(:account) { build(:account) }
    let(:amount) { Faker::Number.decimal(2) }
    let(:consumption) { Faker::Number.decimal(2) }
    let(:date) { Faker::Date.between(2.months.ago, Time.current) }
    let(:number) { Faker::Number.number(12) }
    let(:first_expiration) { Faker::Date.between(2.months.ago, Time.zone.today) }
    let(:second_expiration) { Faker::Date.between(2.months.ago, Time.zone.today) }
    let(:status) { 'PAID' }

    it { is_expected.to be_valid }
  end
end
