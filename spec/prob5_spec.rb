require 'euler/prob5'

describe Euler::Prob5 do
  subject { Euler::Prob5.new("1..10").least_common_multiple }
  it { should == 2520 }
end

