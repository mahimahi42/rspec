class Board
    attr_accessor :board

    def initialize
        @board = Array.new(6, Array.new(7, 0))
    end

    def to_s
        ret = ""
        @board.each do |row|
            row.each do |col|
                ret << "#{row[col]} "
            end
            ret << "\n"
        end
        return ret
    end

    def play_at(piece, col)
        5.downto(1) do |i|
            if @board[i][col].eql? 0 then
                @board[i][col] = piece
                return true
            end
        end
        return false
    end
end
