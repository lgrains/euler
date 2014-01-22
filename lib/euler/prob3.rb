require 'prime.rb'

module Euler
  class Prob3

    def initialize(number)
      @number = number.to_f
      @factors = []
      Prime.each(Math::sqrt(@number)) do |p|
        @factors << p if @number % p == 0
      end
    end

    def largest
      @factors.last
    end
  end
end
