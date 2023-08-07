require 'rails_helper'

RSpec.fdescribe User, type: :model do
  it "is invalid without attributes" do
    expect(User.new).not_to be_valid
  end
end