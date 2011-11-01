module Codebreaker

  class Game

    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      @output.puts "Welcome to Codebreaker!"
      @output.puts 'Enter guess:'
    end

    def guess(guess)
      exacts, numbers = '', ''

      (0..3).each do |index|
        if exact_match? guess, index
          exacts << '+'
        elsif number_match? guess, index
          numbers << '-'
        end 
      end
      @output.puts exacts + numbers
    end

    def exact_match? guess, index
      guess[index] == @secret[index]
    end

    def number_match? guess, index
      @secret.include? guess[index]
    end

  end
end
