require 'rails_helper'

RSpec.describe Quote, type: :model do
  it 'have a valid factory' do
    expect(build(:quote)).to be_valid
  end

  it { is_expected.to be_mongoid_document }
  it { is_expected.to have_field(:quote).of_type(String) }
  it { is_expected.to have_field(:author).of_type(String) }
  it { is_expected.to have_field(:author_about).of_type(String) }
  it { is_expected.to have_field(:tags).of_type(Array) }
  it { is_expected.to validate_presence_of(:quote) }
  it { is_expected.to validate_presence_of(:author) }
  it { is_expected.to validate_presence_of(:author_about) }
  it { is_expected.to validate_presence_of(:tags) }
end
