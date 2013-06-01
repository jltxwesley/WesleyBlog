require 'spec_helper'

describe User do

  context "valid user" do
    it "has a valid user" do
      expect(create(:user)).to be_valid
    end
  end

  context "invalid user" do
    it "is invalid without a name" do
      expect(build(:user, name: nil)).to have(1).errors_on(:name)
    end

    it "is invalid with duplicate name" do
      create(:user)
      expect(build(:user)).not_to be_valid
    end

    it "is invalid with password and password_confirmation not match" do
      expect(build(:user, password: "password", password_confirmation: " ")) \
        .not_to be_valid
    end
  end
end
