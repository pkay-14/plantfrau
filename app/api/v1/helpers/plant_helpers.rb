module V1::Helpers::PlantHelpers
  extend Grape::API::Helpers
  params :plant_params do
    requires :name, type: String, allow_blank: :false
    requires :family, type: String, allow_blank: :false
    requires :description, type: String, allow_blank: :false
    optional :botanical_name, type: String, allow_blank: :false
  end
end