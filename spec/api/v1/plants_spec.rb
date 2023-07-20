require 'rails_helper'

describe 'Plants Api', :request do
  describe 'GET /plants' do
    it 'returns all plants' do
      Fabricate(:plant)
      Fabricate(:plant, name: 'plant2', description: 'another plant')
      get '/api/v1/plants'
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body)['plants'].size).to eq(Plant.all.size)
    end
  end

  describe 'POST /plants' do
    it 'creates a new plant' do
      expect {
        post '/api/v1/plants', params: {name: 'new plant', botanical_name: 'new plant bota',family: 'new family',
                                        description: 'new desc'}
      }.to change{Plant.count}.from(0).to(1)

      expect(response).to have_http_status(:success)
    end
  end

end