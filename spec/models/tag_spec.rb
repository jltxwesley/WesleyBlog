require 'spec_helper'

describe Tag do

  context "valid tag" do
    it "has a valid tag" do
      expect(create(:tag)).to be_valid
    end
  end

  context "invalid tag" do
    it "is invalid without name" do
      expect(build(:tag, name:nil)).to have(1).errors_on(:name)
    end

    it "is invalid with duplicate name" do
      create(:tag, name: "New Tag")
      expect(build(:tag, name: "New Tag")).not_to be_valid
    end
  end
end
