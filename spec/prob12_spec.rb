require 'euler/prob12'

describe Euler::Prob12 do
  context ".generate_triangular_number(7)" do
    subject { Euler::Prob12.generate_triangular_number(7) }
    it {should == 28 }
  end

  context ".num_factors_triangular_number" do
    subject { Euler::Prob12.find_factor_count(28) }
    it {should == 6 }
  end

  context '#find_answer' do
    subject { Euler::Prob12.find_answer(5) }
    it {should == 28}
  end
end