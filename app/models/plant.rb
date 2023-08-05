class Plant < ApplicationRecord
  has_many :instructions
  has_many :additional_infos
  has_many_attached :images

  scope :descending, -> { order(updated_at: :desc) }

  def photos
    self.images.map{|img| url_for(img)}
  end
end
