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
      total_match_count - exact_match_count
    end

    def total_match_count
      count = 0
      secret = @secret.split('')
      @guess.split('').map do |n|
        if secret.include? n
          secret.delete_at secret.index(n)
          count += 1
        end
      end
      count
    end

  end

end
