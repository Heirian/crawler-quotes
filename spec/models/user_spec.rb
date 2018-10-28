require 'rails_helper'

RSpec.describe User, type: :model do
  it 'have a valid factory' do
    expect(build(:user)).to be_valid
  end

  it { is_expected.to be_mongoid_document }
end
