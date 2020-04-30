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
end