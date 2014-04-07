require "spec_helper"


describe Piece do
 it { should belong_to(:user) }
 it { should belong_to(:location) }
 it { should have_many(:groupings) }
 it { should have_many(:outfits).through(:groupings) }
 it { should have_many(:wears) }
end