module Euler
  class Prob15
    def initialize(side_of_square)
      @side_of_square = side_of_square.to_i
      @adjacency_list_hash = {}
      @adjacency_matrix_arr = []
    end

    def adjacency_list
      num_points = @side_of_square**2
      row_num = 2
      (1..num_points).each_with_index do |num, index|
        if !multiple_of_side?(num)
          # puts " num is #{num}"
          @adjacency_list_hash[num] = [num+1]
          @adjacency_list_hash[num] << num+@side_of_square if num + @side_of_square < @side_of_square **2
        else
          if num != @side_of_square ** 2
            @adjacency_list_hash[num] = [@side_of_square*row_num]
            row_num += 1
          else
            @adjacency_list_hash[num] =[]
          end
        end
      end
      @adjacency_list_hash
    end

    def adjacency_matrix
      adjacency_list.each_pair do |key, value|
        # puts "key is #{key} value is #{value}"
        if value.empty?
          @adjacency_matrix_arr << [key,nil]
        else
          value.each do |v|
            @adjacency_matrix_arr << [key,v]
          end
        end
      end
      @adjacency_matrix_arr
    end

    def adjacency_matrix_grid
      grid = Array.new(@side_of_square**2) {Array.new(@side_of_square**2, 'f') }
      adjacency_list.each_pair do |key, value|
        if !value.empty?
          value.each do |v|
            grid[key-1][v-1] = 't'
          end
        end
      end
      grid
    end

    def multiple_of_side?(num)
      num % @side_of_square == 0 ? true : false
    end
  end
end