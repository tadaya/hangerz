require "spec_helper"


describe Piece do
 it { should belong_to(:user) }
 it { should belong_to(:location) }
 it { should have_many(:groupings) }
end