module Euler
  class Prob11
    def initialize(filename)
      File.foreach(filename).with_index do |line, line_num|
        @grid[line_num] = convert_to_int(line)
      end
    end

    def convert_to_int(line)
      line.split(' ').inject([]){ |arr, num_str| arr << num_str.to_i; arr }
    end

  end
end


# File.foreach('tmp/5grid.txt').with_index { |line, line_num|puts "#{line_num}: #{line}" }
