#spec/winner_test.rb 
require "./lib/winner.rb"

describe Winner do
    describe "#winning_move" do
        let(:winner) { Winner.new } 
        it "the first horizontal line is a winning move" do
            expect(winner.winning_move).to eql(true)
        end
    end
end