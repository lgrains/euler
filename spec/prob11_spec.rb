require 'euler/prob11'

describe Euler::Prob11 do
  # context "final answer" do
  #   subject { Euler::Prob11.new("tmp/5grid.txt").max_prod_of_4 }
  #   it { should == 9507960 }
  # end

  context "max_prod_of_rows" do
    subject { Euler::Prob11.new("tmp/5grid.txt").max_prod_of_rows }
    it { should == 9507960 }
  end

  context "max_prod_of_cols" do
    subject { Euler::Prob11.new("tmp/5grid.txt").max_prod_of_cols }
    it { should == 6514520 }
  end

  context "get_horizontal_row_product" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_horizontal_prod(0,0) }
    it { should == 34144 }
  end

  context "get_vertical_row_prod" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_vertical_prod(0,0) }
    it { should == 1651104 }
  end

  context "pick_four_diag_lr_prod_equal" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_diag_lr_prod_equal(0) }
    it { should == 279496 }
  end

  context "calc_max_prod_equal" do
    subject { Euler::Prob11.new("tmp/5grid.txt").calc_max_prod_equal(0)}
    it { should == 1781787 }
  end

  context "pick_four_diag_greater_prod" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_diag_greater_prod(1,0)}
    it {should == 16194745 }
  end

  context "calc_max_prod_row_greater" do
    subject { Euler::Prob11.new("tmp/5grid.txt").calc_max_prod_row_greater(1,0)}
    it {should == 16194745 }
  end

  context "pick_four_diag_less_prod" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_diag_less_prod(0,1)}
    it {should == 57816 }
  end

  context "calc_max_prod_row_less" do
    subject { Euler::Prob11.new("tmp/5grid.txt").calc_max_prod_row_less(0,1)}
    it {should == 57816 }
  end

  context "pick_four_diag_up_prod_equal" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_diag_up_prod_equal(0,4)}
    it {should == 3298400 }
  end

  context "calc_max_prod_equal_up" do
    subject { Euler::Prob11.new("tmp/5grid.txt").calc_max_prod_equal_up(0,4)}
    it {should == 3298400 }
  end

  context 'pick_four_diag_up_prod_upper' do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_diag_up_prod_upper(3,0)}
    it {should == 24468444 }
  end

  context "calc_max_prod_equal_up" do
    subject { Euler::Prob11.new("tmp/5grid.txt").calc_max_prod_equal_up(3,0)}
    it {should == 24468444 }
  end
end



