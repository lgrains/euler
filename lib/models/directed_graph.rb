module Models
  class DirectedGraph
    attr_accessor :nodes

    def initialize(adjacency_list)
      @adjacency_list = adjacency_list
      @nodes = []
      @parents = []
      add_nodes_and_edges
    end

    def add_nodes_and_edges
      @adjacency_list.each_pair do |key,value_arr|
        node = find_or_create_node_by_name(key)
        @nodes <<  node unless @nodes.include? node
        add_edges_and_parents(node, value_arr)
      end
    end

    # a directed graph.
    def add_edges_and_parents(node, adj_nodes_arr)
      adj_nodes_arr.each do |n|
        child = find_or_create_node_by_name(n)
        node.adjacents << child
        child.parents << node
        @nodes << child unless @nodes.include? child
      end
    end

    def find_or_create_node_by_name(name)
      @nodes.each do |n|
        return n if n.name == name
      end
      return Node.new(name)
    end

    def find_num_paths
      nodes_to_check = Set.new
      target_name = find_sink_vertex
      target = find_or_create_node_by_name(target_name)
      target.visited = 1
      target.parents.inject(nodes_to_check){|set,el| set << el.name; set}
      # puts "nodes_to_check is #{nodes_to_check.to_a}"
      until nodes_to_check.empty? do
        target_name = nodes_to_check.first
        nodes_to_check = nodes_to_check.delete(target_name)
        target = find_or_create_node_by_name(target_name)

        target.visited += target.adjacents.inject(0){ |sum, el| sum += el.visited; sum}
        target.parents.inject(nodes_to_check){|set,el| set << el.name; set}
        # puts "nodes_to_check inside loop is #{nodes_to_check.to_a}"
        # puts "target.visited inside loop is #{target.visited}"
      end
      target.visited
    end

    def find_sink_vertex
      @adjacency_list.each_pair do | key, value_arr |
        return key if value_arr.empty?
      end
    end
  end
end