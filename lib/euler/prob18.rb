require 'tree'

module Euler
  class Prob18
    def initialize(filename = 'small_tri.txt')
      insert_data_into_array(filename)
    end

    def insert_data_into_array(filename)
      fd = File.open(filename)
      @array_of_str = fd.readlines
      @array_of_lines = []
      @array_of_str.each_with_index do |line, index|
        @array_of_lines[index] = line.split
      end
    end

    def find_max_cost
      num_lines = @array_of_lines.length
      (num_lines-2).downto(0) do |n|
        @array_of_lines[n].each_index do |index|
          @array_of_lines[n][index] = replace_element_with_max(@array_of_lines[n][index],index, n)
        end
      end
      @array_of_lines[0][0]
    end

    def replace_element_with_max(element,index, n)
      left_sum = @array_of_lines[n+1][index].to_i + element.to_i
      right_sum = @array_of_lines[n+1][index+1].to_i + element.to_i
      max(left_sum, right_sum)
    end

    def max( a, b )
      a>=b ? a : b
    end
  end
end