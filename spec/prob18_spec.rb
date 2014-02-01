require 'euler/prob18'

describe Euler::Prob18 do
  context 'from file small_tri.txt' do
    subject {Euler::Prob18.new('small_tri.txt').find_max_cost}
    it { should == 23 }
  end

  context 'from file 5_tri.txt' do
    subject {Euler::Prob18.new('small_tri.txt').find_max_cost}
    it { should == 31 }
  end
end