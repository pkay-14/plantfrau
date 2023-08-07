require 'rails_helper'

RSpec.fdescribe Plant, type: :model do
  it "successfully creates plant" do
    expect(Plant.create(Plant.generate_fake_attributes)).to be_valid
  end
end