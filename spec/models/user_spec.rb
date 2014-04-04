require "spec_helper"


describe User do
  it { should have_many(:pieces) }
  it { should have_many(:locations) }
  it { should have_many(:outfits) }


  it { should validate_presence_of(:email) }
end