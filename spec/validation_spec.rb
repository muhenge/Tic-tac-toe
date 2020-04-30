require "./lib/validation.rb"

describe Validation do
    describe "#valid?" do
        let(:validation) { Validation.new }
        it "the input is not a number between 1 and 9" do
          validation.user_input = "h"
          expect(validation.valid?).to eql(false)
        end

        it "the input is a number between 1 and 9" do
          validation.user_input = 1
          expect(validation.valid?).to eql(true)
      end
    end
    describe "#avaliable?" do
      let(:validation) { Validation.new}
      it "the space is not avaliable to choose" do
        validation.user_input = 3
        validation.add_symbol(1)
        validation.user_input = 3
        expect(validation.avaliable?).to eql(false)
      end
      it "the space is avaliable to choose" do
        validation.user_input = 3
        validation.add_symbol(1)
        validation.user_input = 2
        expect(validation.avaliable?).to eql(true)
    end
  end
end