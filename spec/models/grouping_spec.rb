require "spec_helper"

describe Grouping do
  it { should belong_to(:outfit) }
  it { should belong_to(:piece) }
end