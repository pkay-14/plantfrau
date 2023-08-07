require 'rails_helper'

RSpec.fdescribe Instruction, type: :model do
  it "successfully adds instruction for a plant" do
    plant = Fabricate(:plant)
    expect {
      Fabricate(:instruction, plant_id: plant.id)}.to change {plant.instructions.count}.from(0).to(1)
  end
end