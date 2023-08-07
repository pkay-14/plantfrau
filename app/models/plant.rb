class Plant < ApplicationRecord
  has_many :instructions, dependent: :destroy
  has_many :additional_infos, dependent: :destroy
  has_many_attached :images, dependent: :destroy

  accepts_nested_attributes_for :instructions, allow_destroy:  true
  accepts_nested_attributes_for :additional_infos, allow_destroy:  true


  scope :descending, -> { order(updated_at: :desc) }

  def photos
    self.images.map{|img| url_for(img)}
  end

  def self.generate_fake_attributes
    {
      name: "#{Faker::Color.color_name} #{Faker::Name.neutral_first_name}",
      botanical_name: "#{name.delete(' ')} #{Faker::Lorem.word}",
      family: Faker::Lorem.words(number: 2).join(''),
      description: Faker::Lorem.sentence(word_count: 10)
    }

  end
end
