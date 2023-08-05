class Entities::Plant < Grape::Entity
  include Rails.application.routes.url_helpers
  expose :id
  expose :name
  expose :botanical_name
  expose :family
  expose :description
  expose :images do |plant| plant.images.map{|img| rails_blob_path(img, disposition: "attachment", only_path: true)} end
end
