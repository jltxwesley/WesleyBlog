require 'spec_helper'

describe Article do

  context "valid article" do
    it "has a valid article" do
      expect(create(:article)).to be_valid
    end
  end

  context "invalid article" do
    it "is invalid without name" do
      expect(build(:article, name: nil)).to have(1).errors_on(:name)
    end

    it "is invalid without content" do
      expect(build(:article, content: nil)).to have(1).errors_on(:content)
    end

    it "is invalid with duplicate name" do
      create(:article)
      expect(build(:article)).not_to be_valid
    end
  end
end
