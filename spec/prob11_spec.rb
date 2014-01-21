require 'euler/prob11'

describe Euler::Prob11 do
  context "put_zeros_on_top_and_bottom" do
    subject { Euler::Prob11.new("tmp/5grid.txt") }
    it { subject.grid.should ==[[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                                [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                                [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                                [0, 0, 0, 8, 2, 22, 97, 38, 0, 0, 0],
                                [0, 0, 0, 49, 49, 99, 40, 17, 0, 0, 0],
                                [0, 0, 0, 81, 49, 31, 73, 55, 0, 0, 0],
                                [0, 0, 0, 52, 70, 95, 23, 4, 0, 0, 0],
                                [0, 0, 0, 22, 31, 16, 71, 51, 0, 0, 0],
                                [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                                [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                                [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]] }
  end

  context "max_prod_of_rows" do
    subject { Euler::Prob11.new("tmp/5grid.txt").max_prod_of_rows }
    it { should == 9507960 }
  end

  context "max_prod_of_cols" do
    subject { Euler::Prob11.new("tmp/5grid.txt").max_prod_of_cols }
    it { should == 6514520 }
  end

  context "pick_four_horizontal_prod" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_horizontal_prod(3,4) }
    it { should == 162184 }
  end

  context "pick_four_vertical_prod" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_vertical_prod(3,4) }
    it { should == 336140 }
  end

  context "pick_four_l2r_diag_prod" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_l2r_diag_prod(3,4) }
    it { should == 57816 }
  end

  context "max_prod_of_l2r_diags" do
    subject { Euler::Prob11.new("tmp/5grid.txt").max_prod_of_l2r_diags }
    it {should == 16194745}
  end

  context "pick_four_r2l_up_diags_prod" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_r2l_up_diags_prod(7,3) }
    it { should == 1909600 }
  end

  context "max_prod_of_l2r_up_diags" do
    subject { Euler::Prob11.new("tmp/5grid.txt").max_prod_of_l2r_up_diags }
    it {should == 24468444}
  end

  context "pick_four_r2l_up_diags_prod" do
    subject { Euler::Prob11.new("tmp/5grid.txt").pick_four_r2l_up_diags_prod(7,4) }
    it { should == 3654745 }
  end

  context "find_max_product_of_four" do
    subject { Euler::Prob11.new("tmp/5grid.txt").find_max_product_of_four }
    it {should == 24468444 }
  end
end



