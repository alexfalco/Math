require_relative './player_class'

class Game

    def initialize
        @player1 = Player.new "Alex"
        @player2 = Player.new "LP"
        @players = [@player1, @player2].shuffle
        @round = 1
    end

    def display_round
        puts '~~~~~~~~~~~~~~~~~~~~~~~'
        puts "          Round ##{@round}"
        puts '~~~~~~~~~~~~~~~~~~~~~~~'
    end

    def display_game_status
        puts
        puts " ____ GAME STATUS ____"
        @players.each {|player| puts "#{player.name}'s #{player.dead? ? 'out of LIFE!' : "LIFE is: #{player.life}"}"}
    end

    def next_round
        @round += 1
        @players.rotate!
    end

    def game_over?
        any_dead = @players.select{|player| player.dead?}
        if any_dead.count() < 1
            false
        else
            puts "$-$-$-$-$-$-$-$-$-$-$-$-$-$-$"
            if any_dead == "Alex"
                puts "Alex, Congratulations for winning!"
            else
                puts "LP, Congratulations for winning!"
                true
            end
        end
    end
    
    def question
        num_1 = rand(1...10)
        num_2 = rand(1...10)
        ans = num_1 + num_2
        puts "#{@players[0].name}, what is #{num_1} + #{num_2}?"
        input = gets.chomp.to_i
        if input == ans
            puts "Yes, Correct!!"
        else
            @players[0].wrong
        end

    end

    def run
        until (game_over?) do
            display_round
            question
            display_game_status
            next_round
        end
    end
end
