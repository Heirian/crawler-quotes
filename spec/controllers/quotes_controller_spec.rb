# frozen_string_literal: true

require 'rails_helper'

RSpec.describe QuotesController, type: :controller do
  def authenticated_header(user)
    token = Knock::AuthToken.new(payload: { sub: user.id }).token
    request.headers['Authorization'] = token
  end

  let(:user) { create(:user) }
  let(:quote) { create(:quote) }
  let(:all_quotes) { Quote.all.map(&:serialize) }
  let(:tags) { quote.tags }
  let(:by_tag) { Quote.in(tags: tags).map(&:serialize) }

  context 'found quotes' do
    before(:each) do
      authenticated_header(user)
    end

    it 'all quotes' do
      get :index
      expect(response.body).to eq({ quotes: all_quotes }.to_json)
    end

    it 'by tag' do
      get :index, params: { id: tags }
      expect(response.body).to eq({ quotes: by_tag }.to_json)
    end
  end
end
