class Entities::Plant < Grape::Entity
  expose :id
  expose :name
  expose :botanical_name
  expose :family
  expose :description
end
