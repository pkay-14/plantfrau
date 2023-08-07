class Instruction < ApplicationRecord
  belongs_to :plant

  CATEGORIES = %w(Water Light)
end
