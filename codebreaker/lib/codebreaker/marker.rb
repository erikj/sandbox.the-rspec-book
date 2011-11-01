module Codebreaker

  class Marker

    def initialize( secret, guess )
      @secret, @guess = secret, guess
    end

    def exact_match? index
      @guess[index] == @secret[index]
    end

    def number_match? index
      @secret.include? @guess[index]
    end

    def exact_match_count
      count = 0
      (0..3).each do |index|
        count += 1 if exact_match? index
      end
      return count
    end

    def number_match_count
      count = 0
      (0..3).each do |index|
        count += 1 if !exact_match? index and number_match? index
      end
      return count
    end

  end

end
