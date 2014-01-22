module Euler
  class Prob14
    attr_reader :sequence, :max_sequence_length

    def initialize(start_num)
      @start_num = start_num.to_i
      @sequence = [start_num.to_i]
    end

    def generate_next_term
      # puts " #{@sequence.last} in generate_next_term"
      @sequence << even_or_odd(@sequence.last)
    end

    def even_or_odd(n)
      # puts "in even_or_odd n is #{n}"
      return n/2 if n.even?
      3*n+1
    end

    def return_sequence
      until @sequence.last == 1 do
        generate_next_term
      end
      @sequence
    end

    def sequence_length
      return_sequence.length
    end

    def self.find_start_num_for_longest_sequence
      max_sequence_length = -1
      starting_num = 999999
      starting_num.downto(1) do |start_num|
        s_length = Euler::Prob14.new(start_num).sequence_length
        if s_length > max_sequence_length
          max_sequence_length = s_length
          starting_num = start_num
        end
      end
      starting_num
    end

  end
end