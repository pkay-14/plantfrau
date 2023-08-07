require 'rails_helper'

RSpec.fdescribe ApiKey, type: :model do
  let(:user) do
    Fabricate(:user)
  end
  let(:api_key) do
    Fabricate(:api_key, user_id: user.id)
  end
  describe 'access token presence' do
    it 'generates access token' do
      expect(api_key.access_token).to be_present
    end
  end

  describe 'expiry date presence' do
    it 'generates expiry date' do
      expect(api_key.expires_at).to be_present
    end
  end

  describe 'api key expires in 30 days' do
    it 'expires in 30 days' do
      expect(api_key.expires_at.to_date).to eq(api_key.created_at.to_date + 30.days)
    end
  end
end
