require 'tree'

module Euler
  class Prob18
    def initialize(filename = 'small_tri.txt')
      @filename = filename
      @arr_of_lines = []
      insert_data_into_array
    end

    def insert_data_into_array
      f = File.open(@filename)
      f.each do |line|
        @arr_of_lines << line.split.map{|n| n.to_i}
      end
    end

    def find_max_cost
      (num_lines-2).downto(0) do |line_to_replace|
        loop_through_line(line_to_replace)
      end
      @arr_of_lines[0][0]
    end

    def loop_through_line(current_line)
      @arr_of_lines[current_line].each_index do |index|
        @arr_of_lines[current_line][index] = replace_element_with_max_sum(@arr_of_lines[current_line][index],index, current_line)
      end
    end

    def num_lines
      @arr_of_lines.length
    end

    def replace_element_with_max_sum(element,index, n)
      element += [child_value('left',n,index), child_value('right',n,index)].max
    end

    def child_value(side,n,index)
      return @arr_of_lines[n+1][index] if side =='left'
      @arr_of_lines[n+1][index+1]
    end
  end
end