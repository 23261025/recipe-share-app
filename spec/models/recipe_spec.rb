require 'rails_helper'

RSpec.describe Recipe, type: :model do
  it "has a valid factory" do
    expect(Recipe.new).to be_a(Recipe)
  end
end
