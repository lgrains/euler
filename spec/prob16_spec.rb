require 'euler/prob16'

describe Euler::Prob16 do
  context "power of 2 is 15" do
    subject { Euler::Prob16.new(15).sum_of_digits }
    it { should == 26 }
  end

  context "power of 2 is 24" do
    subject { Euler::Prob16.new(24).sum_of_digits }
    it { should == 37 }
  end

end