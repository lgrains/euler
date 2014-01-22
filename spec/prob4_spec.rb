require 'euler/prob4'

describe Euler::Prob4 do
  subject { Euler::Prob4.new(2).largest_palindrome }
  it { should == 9009 }
end

