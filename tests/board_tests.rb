require "rspec"
require_relative "../board"

describe Board do
    before do
        @board = Board.new
    end

    it "should be zeroed out" do
        @board.board[0][0].should == 0
    end

    it "should drop the piece" do
        @board.play_at("*", 0).should == true
    end

    it "should drop pieces on top of other pieces" do
        correct = "0 0 0 0 0 0 0 \n0 0 0 0 0 0 0 \n0 0 0 0 0 0 0 \n0 0 0 0 0 0 0 \n* 0 0 0 0 0 0 \n* 0 0 0 0 0 0 \n"
        @board.play_at("*", 0)
        @board.to_s.should == correct
    end
end
