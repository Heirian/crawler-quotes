require 'rails_helper'

RSpec.describe User, type: :model do
  it 'have a valid factory' do
    expect(build(:user)).to be_valid
  end

  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_field(:email).of_type(String) }
  it { is_expected.to have_field(:password_digest).of_type(String) }
  it { is_expected.to validate_presence_of(:email) }
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  it do
    is_expected.to validate_format_of(:email)
      .with_format(User::VALID_EMAIL_REGEX)
  end
  it do
    is_expected.to validate_length_of(:password).with_minimum(6)
                                                .with_maximum(72)
  end
end
