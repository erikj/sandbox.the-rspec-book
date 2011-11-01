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
      matches = { :exact=>'', :numeric=>'' }

      (0..3).each do |index|
        if exact_match? guess, index
          matches[:exact] << '+'
        elsif number_match? guess, index
          matches[:numeric] << '-'
        end 
      end
      @output.puts matches[:exact] + matches[:numeric]
    end

    def exact_match? guess, index
      guess[index] == @secret[index]
    end

    def number_match? guess, index
      @secret.include? guess[index]
    end

  end
end
