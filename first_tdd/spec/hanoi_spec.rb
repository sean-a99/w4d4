require 'rspec'
require 'hanoi.rb'

describe Towers do
  subject(:game) { Towers.new(5) }

  describe '#initialize' do
    it 'instantiates a game correctly' do

      expect(game.stacks).to eq([[5, 4, 3, 2, 1], [], []])
    end

    it 'raises an error when starting disks is not between 2 - 10' do

      expect { Towers.new(0) }.to raise_error 'Invalid starting disks'
      expect { Towers.new(5) }.to_not raise_error
      expect { Towers.new(70) }.to raise_error 'Invalid starting disks'
    end

  end

  describe '#valid_move?' do
    it 'takes in 2 valid arguments (check for false)' do

      expect(game.valid_move?(4, 5)).to eq(false)
      expect(game.valid_move?(0, 1)).to eq(true)
      expect { game.valid_move?(1) }.to raise_error
    end

  end



end