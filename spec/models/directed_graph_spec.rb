require 'models/directed_graph.rb'
require 'models/node.rb'
require 'set'

describe "directed_graph" do
  context "given adjacency list" do
    let(:adj_list) { {1 => [2,4], 2 => [3,5], 3=> [6],4=> [5,7],5 => [6,8], 6=>[9], 7 =>[8], 8=>[9], 9=>[] } }
    subject { DirectedGraph.new(adj_list).nodes.map{|n| n.name} }
    it {should == [ 1,2,3,4,5,6,7,8,9 ]}
  end

  context "given adjacency list, map to adjacent nodes" do
    let(:adj_list) { {1 => [2,4], 2 => [3,5], 3=> [6],4=> [5,7],5 => [6,8], 6=>[9], 7 =>[8], 8=>[9], 9=>[] } }
    subject { DirectedGraph.new(adj_list).nodes.map{|n| n.adjacents.map{|a| a.name} } }
    it {should == [ Set.new(1,2,4), Set.new(5), Set.new(6), Set.new(5), Set.new(6,7,8), Set.new(9),Set.new(8), Set.new(9), Set.new()]}
  end

  context "given adjacnecy list, find parents" do
    let(:adj_list) { {1 => [2,4], 2 => [3,5], 3=> [6],4=> [5,7],5 => [6,8], 6=>[9], 7 =>[8], 8=>[9], 9=>[] } }
    subject { DirectedGraph.new(adj_list).nodes.map{|n| n.parents.map{|a| a.name} } }
    it { should == [[], [1], [1], [2], [2, 4], [3, 5], [4], [5, 7], [6, 8]]}
  end

  context "find_num_paths" do
    let(:adj_list) { {1 => [2,4], 2 => [3,5], 3=> [6],4=> [5,7],5 => [6,8], 6=>[9], 7 =>[8], 8=>[9], 9=>[] } }
    subject{ DirectedGraph.new(adj_list).find_num_paths }
    it {should == 6 }
  end

  context "find_num_paths" do
    let(:adj_list) { {1 => [2,5], 2 => [3,6], 3=> [4,7],4=> [8],5 => [6,9], 6=>[7,10], 7 =>[8,11], 8=>[12], 9=>[10,13], 10=>[11,14], 11=>[12,15],12=>[16],13=>[14], 14=>[15],15=>[16],16=>[] } }
    subject{ DirectedGraph.new(adj_list).find_num_paths }
    it {should == 20 }
  end
end