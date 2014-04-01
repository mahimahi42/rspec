require "rspec"
require_relative "../board"

describe Board do
    before do
        @board = Board.new
    end

    it "should be zeroed out" do
        @board.board[0][0].should == 0
    end
end
