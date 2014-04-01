require "rspec"
require_relative "../game"

describe Game do
    before do
        @game = Game.new
    end

    it "should have a board" do
        @game.board.should_not == nil
    end

    it "should have both players" do
        @game.player_a.should_not == nil
        @game.player_b.should_not == nil
    end
end
