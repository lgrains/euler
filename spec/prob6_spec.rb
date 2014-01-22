require 'euler/prob6'

describe Euler::Prob6 do
  subject { Euler::Prob6.new(10).sum_square_difference }
  it { should == 2640 }
end
