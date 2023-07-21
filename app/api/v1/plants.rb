class V1::Plants < Grape::API
  namespace :plants do
    helpers V1::Helpers::PlantHelpers
    desc 'returns all plants'
    get '/' do
      plants = Entities::Plant.represent Plant.all
      present :plants, plants
    end

    desc 'creates new plant'
    params do
      use :plant_params
    end
    post '/' do
      Plant.create!(params)
    end

    route_param :id do
      desc 'returns single plant'
      get do
        plant = Entities::Plant.represent Plant.find(params[:id])
        present :plant, plant
      end

      desc 'updates a plant'
      params do
        use :plant_params
      end
      put do
        plant = Plant.find(params[:id])
        plant.update(params)
      end

      desc 'deletes a plant'
      delete do
        Plant.destroy(params[:id])
      end
    end
  end
end