require "./spec_helper"

describe Character do
  describe "#initialize" do
    it "creates an empty @abilities hash" do
      char = Character.new("Test")

      (char.@abilities.size).should eq(0)
    end
  end

  describe "#add_ability" do
    it "adds a pair to the @abilities hash" do
      char = Character.new("Test")

      char.add_ability(:test, HealthAbility.new(100, 100))

      (char.@abilities.size).should eq(1)
    end
  end
end
