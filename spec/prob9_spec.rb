require 'euler/prob9'

describe Euler::Prob9 do
  subject { Euler::Prob9.new("[3,4,5]").special_product }
  it { should == 60 }
end
