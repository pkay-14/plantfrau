require 'rails_helper'

RSpec.fdescribe AdditionalInfo, type: :model do
  it "successfully adds additional Info for a plant" do
    plant = Fabricate(:plant)
    expect {
      Fabricate(:additional_info, plant_id: plant.id)
    }.to change {plant.additional_infos.count}.from(0).to(1)
  end
end