class Plant < ApplicationRecord
  has_many :instructions
  has_many :additional_infos
  has_many_attached :images
end
