require 'tree'

module Euler
  class Prob18
    def initialize(filename = 'small_tri.txt')
      @filename = filename
      @tri_arr = []
      insert_data_into_array
    end

    def insert_data_into_array
      f = File.open(@filename)
      f.each do |line|
        @tri_arr << line.split.map{|n| n.to_i}
      end
    end

    def find_max_cost
      (num_lines-2).downto(0) do |line_to_replace|
        loop_through_line(line_to_replace)
      end
      @tri_arr[0][0]
    end

    def loop_through_line(current_line)
      @tri_arr[current_line].each_index do |index|
        replace_element(current_line,index)
      end
    end

    def replace_element(current_line,index)
      @tri_arr[current_line][index] = replace_element_with_max_sum(@tri_arr[current_line][index],index, current_line)
    end

    def num_lines
      @tri_arr.length
    end

    def replace_element_with_max_sum(element,index, n)
      element += [child_value('left',n,index), child_value('right',n,index)].max
    end

    def child_value(side,n,index)
      return @tri_arr[n+1][index] if side =='left'
      @tri_arr[n+1][index+1]
    end
  end
end