class Instruction < ApplicationRecord
  belongs_to :plant

  validates :plant_id, presence: true

  CATEGORIES = %w(Water Light)
end
