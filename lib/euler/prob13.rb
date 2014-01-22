# assumption Numbers are the same length

module Euler
  class Prob13
    def initialize(filename, num_digits)
      @array_of_num = []
      @max_len = -1
      @num_digits = num_digits
      File.foreach(filename) do |line|
        # @array_of_num << line.chomp.to_s.split('')
        @array_of_num << line.to_i
      end
      @answer = 0
    end

    def find_sum
      @array_of_num.inject(0){ |sum, num| sum += num; sum}
    end

    # def find_sum
    #   (1..@num_digits.to_i+2).each do |n|
    #     sum = find_sum_highest_order
    #     # puts "======>>>sum is #{sum}"
    #     @answer += sum
    #     @answer *= 10
    #   end
    #   @answer / 10
    # end

    # def find_sum_highest_order
    #   digit_total = 0
    #   @array_of_num.each do |small_arr|
    #     digit_total += small_arr.shift.to_i
    #   end
    #   digit_total
    # end
  end
end