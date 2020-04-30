require './lib/draw.rb'

describe Draw do
    describe "#draw?" do
        let(:draw) { Draw.new }
        it "it's not a draw" do
          draw.count = 5
          expect(draw.draw?).to eql(false)
        end
        it "it's a draw" do
          draw.count = 15
          expect(draw.draw?).to eql(true)
        end
      end
    end
  