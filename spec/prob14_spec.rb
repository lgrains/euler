require 'euler/prob14'

describe Euler::Prob14 do
  context "start_num is 13" do
    subject { Euler::Prob14.new(13).sequence_length }
    it { should == 10 }
  end

  context "start_num is 1000000" do
    subject { Euler::Prob14.new(1000000).sequence_length }
    it { should == 153}
  end

  context "find longest sequence with start_num under 1 million" do
    subject { Euler::Prob14.find_start_num_for_longest_sequence}
    it { should == 837799 }
  end

end