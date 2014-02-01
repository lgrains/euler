module Euler
  class Prob17
    def initialize(upper_limit)
      @upper_limit = upper_limit

       # constants
      ones = %w(one two three four five six seven eight nine)
      tens = %w(twenty thirty forty fifty sixty seventy eighty ninety)
      eleven_nineteen = %w(ten eleven twelve thirteen fourteen fifteen sixteen  seventeen  eighteen nineteen)
      @h_teens = Hash[[0,1,2,3,4,5,6,7,8,9].zip eleven_nineteen]
      @h_ones = Hash[[1,2,3,4,5,6,7,8,9].zip ones ]
      @h_tens = Hash[[2,3,4,5,6,7,8,9].zip tens]
    end

    def process
      sum = 0
      (1..@upper_limit.to_i).each do |num|
        dig_array = collect_digits(num)
        # puts " #{num}  #{dig_array}"
        # puts "total for #{num} is #{find_letter_count_for_array(dig_array)}"
        sum += find_letter_count_for_array(dig_array)
        # puts    " #{sum} is sum"
      end
      sum
    end

    def find_letter_count_for_array(ar)
      word_arr = []
      word_arr << @h_ones[ar[0]] + ' thousand ' if ar[0] != 0
      word_arr << @h_ones[ar[1]] + ' hundred' if ar[1] != 0
      word_arr << ' and ' if ar[1] != 0 && (ar[2] != 0 || ar[3]!= 0)
     if ar[2] == 1
        word_arr << @h_teens[ar[3]]
      elsif ar[2] != 0
        word_arr << "#{@h_tens[ar[2]]}-"
        word_arr << @h_ones[ar[3]] if ar[3] != 0
      else  #case where 10s place is 0
        word_arr << @h_ones[ar[3]] if ar[3] != 0
      end
      puts word_arr.join().gsub(/[ -]/,'')
      word_arr.join().gsub(/[ -]/,'').length
    end

    def collect_digits(num)
      @thousands = num / 1000
      remainder = num % 1000
      @hundreds = remainder / 100
      remainder = remainder % 100
      @tens = remainder / 10
      @ones = remainder % 10
      [@thousands, @hundreds, @tens, @ones]
    end
  end
end