require 'euler/prob13'

describe Euler::Prob13 do
  context "small file" do
    subject { Euler::Prob13.new('five_numbers.txt', 3).find_sum }
    it {should == 27281898}
  end

  context "larger file" do
    subject { Euler::Prob13.new('ten_numbers.txt', 3).find_sum }
    it {should == 55230566}
  end

  context "huge file" do
    subject { Euler::Prob13.new('one_hundred_numbers.txt', 3).find_sum }
    it {should == 5537376230390876637302048746832985971773659831892672}
  end
end