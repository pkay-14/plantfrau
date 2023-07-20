class Entities::Plant < Grape::Entity
  expose :id
  expose :botanical_name
  expose :family
  expose :description
end
