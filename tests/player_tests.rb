require "rspec"
require_relative "../player.rb"

describe Player do
    before do
        @player = Player.new
    end

    it "should give * as default piece" do
        @player.piece.should == "*"
    end
end
