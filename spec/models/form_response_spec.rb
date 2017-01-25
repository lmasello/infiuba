require 'rails_helper'

describe FormResponse, type: :model do
  it { should validate_presence_of(:account) }
  it { should validate_presence_of(:form) }
  it { should validate_presence_of(:status) }
  it { should validate_presence_of(:action_type) }
end
