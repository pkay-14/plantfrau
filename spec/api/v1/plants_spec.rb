require 'rails_helper'

  fdescribe 'Plants Api', :request do
    let(:user) do
      Fabricate(:user)
    end
    let(:api_token) do
      key = Fabricate(:api_key, user_id: user.id)
      key.access_token
    end

    describe 'GET /plants' do
      it 'returns all plants' do
        Fabricate(:plant)
        Fabricate(:plant, name: 'plant2', description: 'another plant')
        get '/api/v1/plants', params: {api_token: api_token}
        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body)['plants'].size).to eq(Plant.all.size)
      end
    end

    describe 'POST /plants' do
      it 'creates a new plant' do
        expect {
          post '/api/v1/plants', params: {api_token: api_token, plant: {name: 'new plant', botanical_name: 'new plant bota',family: 'new family',
                                          description: 'new desc'}}
        }.to change{Plant.count}.from(0).to(1)
        expect(response).to have_http_status(:success)
      end
    end

    describe 'GET /plants/:id' do
      it 'returns a single plant'do
        plant = Fabricate(:plant)
        get "/api/v1/plants/#{plant.id}", params: {api_token: api_token}
        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body)['plant']['id']).to eq(plant.id)
      end
    end

    describe 'PUT /plants/:id' do
      let(:plant_params) do
        {name: 'changed name', description: 'changed desc', family: 'changed family' }
      end
      it 'updates a single plant' do
        plant = Fabricate(:plant)
        expect{
          put "/api/v1/plants/#{plant.id}", params: {api_token: api_token, plant: plant_params}
          plant.reload
        }.to change{plant.name}.from(plant.name).to(plant_params[:name])
        expect(response).to have_http_status(:success)
      end
    end

    describe 'DELETE /plants/:id' do
      it 'deletes single plant with id' do
        plant = Fabricate(:plant)
        expect{
          delete "/api/v1/plants/#{plant.id}", params: {api_token: api_token}
        }.to change{Plant.count}.from(1).to(0)
        expect(response).to have_http_status(:success)
      end
    end
end