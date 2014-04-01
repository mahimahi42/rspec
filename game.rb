require "./board"
require "./player"

class Game
    attr_reader :board, :player_a, :player_b

    def initialize
        @board = Board.new
        @player_a = Player.new
        @player_b = Player.new("+")
    end
end
