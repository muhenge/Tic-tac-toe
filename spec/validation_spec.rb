require './lib/validation.rb'

describe Validation do
  describe '#valid?' do
    let(:validation) { Validation.new }
    it 'the input is not a number between 1 and 9' do
      validation.user_input = 'h'
      expect(validation.valid?).to eql(false)
    end

    it 'the input is a number between 1 and 9' do
      validation.user_input = 1
      expect(validation.valid?).to eql(true)
    end
  end

  describe '#avaliable?' do
    let(:validation) { Validation.new }
    it 'the space is not avaliable to choose' do
      validation.user_input = 3
      validation.add_symbol(1)
      validation.user_input = 3
      expect(validation.avaliable?).to eql(false)
    end
    it 'the space is avaliable to choose' do
      validation.user_input = 3
      validation.add_symbol(1)
      validation.user_input = 2
      expect(validation.avaliable?).to eql(true)
    end
  end

  describe '#add_symbol' do
    let(:validation) { Validation.new }
    it 'Add a circle to the array in a turn that is odd' do
      validation.user_input = 9
      expect(validation.add_symbol(1)).to eql('o')
    end

    it 'Add a cross to the array in a turn that is even' do
      validation.user_input = 9
      expect(validation.add_symbol(6)).to eql('x')
    end
  end
end
