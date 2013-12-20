require 'euler/prob1'

describe Euler::Prob1 do
  subject { Euler::Prob1.new(10, 3, 5).sum }
  it { should == 23 }
end
