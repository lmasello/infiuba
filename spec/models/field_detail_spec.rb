require 'rails_helper'

describe FieldDetail, type: :model do
  it { should validate_presence_of(:form) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:key) }
  it { should validate_presence_of(:origin) }
end
