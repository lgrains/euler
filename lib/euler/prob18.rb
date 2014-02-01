require 'tree'

module Euler
  class Prob18
    def initialize(filename = 'small_tri.txt')
      @filename = filename
      @array_of_str = []
      @arr_of_lines = []
      insert_data_into_array
    end

    def insert_data_into_array
      get_arr_of_strings
      convert_to_arr_of_ints
    end

    def get_arr_of_strings
      f = File.open(@filename)
      f.each {|line| @array_of_str << line.split }
    end

    def convert_to_arr_of_ints
      @array_of_str.each do |line|
        @arr_of_lines << line.collect{|s| s.to_i}
      end
    end

    def find_max_cost
      num_lines = @arr_of_lines.length
      (num_lines-2).downto(0) do |n|
        @arr_of_lines[n].each_index do |index|
          @arr_of_lines[n][index] = replace_element_with_max_sum(@arr_of_lines[n][index],index, n)
        end
      end
      @arr_of_lines[0][0]
    end

    def replace_element_with_max_sum(element,index, n)
      [@arr_of_lines[n+1][index] + element, @arr_of_lines[n+1][index+1] + element].max
    end
  end
end