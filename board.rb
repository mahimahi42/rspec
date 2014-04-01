class Board
    attr_accessor :board

    def initialize
        @board = Array.new(6, Array.new(7, 0))
    end

    def to_s
        ret = ""
        @board.each do |row|
            row.each do |col|
                ret += "#{row[col]} "
            end
            ret += "\n"
        end
        return ret
    end
end
