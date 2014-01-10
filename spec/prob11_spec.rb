require 'euler/prob11'

describe Euler::Prob11 do
  subject { Euler::Prob8.new("tmp/5grid.txt").largest_product }
  it { should == 9507960 }
end
