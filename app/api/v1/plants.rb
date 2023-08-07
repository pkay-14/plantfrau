class V1::Plants < Grape::API
  namespace :plants do
    helpers V1::Helpers::PlantHelpers
    params do
      requires :api_token, type: String, allow_blank: false
    end

    desc 'returns all plants'
    get '/' do
      plants = Entities::Plant.represent Plant.descending
      present :plants, plants
    rescue => e
      error!(e)
    end

    desc 'creates new plant'
    params do
      requires :plant, type: JSON do
        use :plant_params
      end
    end
    post '/' do
      Plant.create!(params[:plant])
    rescue => e
      error!(e)
    end

    route_param :id do
      desc 'returns single plant'
      get do
        plant = Entities::Plant.represent Plant.find(params[:id])
        present :plant, plant
      rescue => e
        error!(e)
      end

      desc 'updates a plant'
      params do
        requires :plant, type: JSON do
          use :plant_params
        end
      end
      put do
        plant = Plant.find(params[:id])
        plant.update(params[:plant])
      rescue => e
        error!(e)
      end

      desc 'deletes a plant'
      delete do
        Plant.destroy(params[:id])
      rescue => e
        error!(e)
      end
    end
  end
end