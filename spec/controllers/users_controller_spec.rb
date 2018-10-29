require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  context 'with valid attributes' do
    let(:success) { { "status": 200, "msg": 'User was created.' }.to_json }

    it 'creates a new user' do
      expect do
        post :create, params: { user: FactoryBot.attributes_for(:user) }
      end
        .to change(User, :count).by(1)
    end

    it 'respondes user created message' do
      post :create, params: { user: FactoryBot.attributes_for(:user) }
      expect(response.body).to eq(success)
    end
  end
end
