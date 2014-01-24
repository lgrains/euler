require 'euler/prob15'

describe Euler::Prob15 do
  context "generate_adjacency_list" do
    subject { Euler::Prob15.new(3).adjacency_list }
    it { should == {1 => [2,4], 2 => [3,5], 3=> [6],4=> [5,7],5 => [6,8], 6=>[9], 7 =>[8], 8=>[9], 9=>[] } }
  end

  context "generate_adjacency_list, side is 4" do
    subject { Euler::Prob15.new(4).adjacency_list }
    it { should == {1 => [2,5], 2 => [3,6], 3=> [4,7],4=> [8],5 => [6,9], 6=>[7,10], 7 =>[8,11], 8=>[12],
      9=>[10,13], 10=> [11,14], 11 => [12,15], 12 => [16], 13=> [14], 14 => [15], 15 => [16], 16 => []} }
  end

  context "generate_adjacency_list, size is 4" do
    subject { Euler::Prob15.new(5).adjacency_list }
    it { should == {1 => [2,6], 2=>[3,7], 3=>[4,8],4=>[5,9],5=>[10],
                    6=>[7,11], 7=>[8,12], 8=>[9,13], 9=>[10,14], 10=>[15],
                    11 => [12,16], 12=>[13,17],13=>[14,18],14=>[15,19], 15=>[20],
                    16=>[17,21], 17=>[18,22], 18=>[19,23],19=>[20,24], 20=>[25],
                    21=>[22], 22=>[23], 23=>[24],24=>[25], 25=>[]}}
  end

  context "adjacency_matrix, size is 3" do
    subject {Euler::Prob15.new(3).adjacency_matrix }
    it { should == [[1,2],[1,4],[2,3],[2,5],[3,6],[4,5],[4,7],[5,6],[5,8],[6,9],[7,8],[8,9],[9,nil]] }
  end

  context "adjacency_matrix_grid, size is 3" do
    subject { Euler::Prob15.new(3).adjacency_matrix_grid }
    it {should == [[ 'f','t','f','t','f','f','f','f','f'],
                    ['f','f','t','f','t','f','f','f','f'],
                    ['f','f','f','f','f','t','f','f','f'],
                    ['f','f','f','f','t','f','t','f','f'],
                    ['f','f','f','f','f','t','f','t','f'],
                    ['f','f','f','f','f','f','f','f','t'],
                    ['f','f','f','f','f','f','f','t','f'],
                    ['f','f','f','f','f','f','f','f','t'],
                    ['f','f','f','f','f','f','f','f','f']]}
    end
end