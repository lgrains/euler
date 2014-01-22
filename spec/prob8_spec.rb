require 'euler/prob8'

describe Euler::Prob8 do
  subject { Euler::Prob8.new("73167176531999").largest_product }
  it { should == 2187 }
end
