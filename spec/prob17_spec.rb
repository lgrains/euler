require 'euler/prob17'

describe Euler::Prob17 do
  context "find dig_array for single number" do
    subject { Euler::Prob17.new(1000).collect_digits(115) }
    it { should == [0,1,1,5] }
  end

  context "find sum for single number" do
    subject { Euler::Prob17.new(1000).process(342) }
    it { should == 23 }
  end

   context "find sum for range 1..40" do
    subject { Euler::Prob17.new(40).process }
    it { should == 300 }
  end

  context "find letter count for dig_array" do
    subject { Euler::Prob17.new(1000).find_letter_count_for_array([0,1,1,5]) }
    it {should == 20}
  end

  context "find letter count for dig_array" do
    subject { Euler::Prob17.new(1000).find_letter_count_for_array([0,9,9,8]) }
    it {should == 25}
  end

  context "find letter count for dig_array" do
    subject { Euler::Prob17.new(1000).find_letter_count_for_array([0,3,4,2]) }
    it {should == 23}
  end

  context "find letter count for dig_array" do
    subject { Euler::Prob17.new(1000).find_letter_count_for_array([1,0,0,0]) }
    it {should == 11}
  end

  context '#process' do
    subject { Euler::Prob17.new(5).process }
    it {should == 19}
  end
end