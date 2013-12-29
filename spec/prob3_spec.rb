require 'euler/prob3'

describe Euler::Prob3 do
  subject { Euler::Prob3.new(13195).largest }
  it { should == 29 }
end

