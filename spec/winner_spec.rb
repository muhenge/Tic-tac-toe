#spec/winner_test.rb 
require "./lib/winner.rb"

describe Winner do
    describe "#winning_move" do
        let(:winner) { Winner.new } 
        it "the horizontal line in the top is a winning move" do
            winner.arr = ['x','x','x',4,5,6,7,8,9]
            expect(winner.winning_move).to eql(true)
        end

        it "the vertical line in the middle is a winning move" do
            winner.arr = [1,'x',3,4,'x',6,7,'x',9]
            expect(winner.winning_move).to eql(true)
        end

        it "any diagonal line is a winning move" do
            winner.arr = [1,'o','o','o','x',6,'o','x',9]
            expect(winner.winning_move).to eql(false)
        end
    end
end