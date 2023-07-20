class V1::Plants < Grape::API
  namespace :plants do
    get '/' do
      plants = Entities::Plant.represent Plant.all
      present :plants, plants
    end

    params do
      requires :name, type: String, allow_blank: :false
      requires :family, type: String, allow_blank: :false
      requires :description, type: String, allow_blank: :false
      optional :botanical_name, type: String, allow_blank: :false
    end
    post '/' do
      Plant.create!(params)
    end
  end
end