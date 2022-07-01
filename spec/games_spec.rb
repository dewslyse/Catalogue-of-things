require_relative '../classes/games'

describe Game do
  before :each do
    @game = Game.new('tafara', '2010-03-05', 'multiplayer')
  end

  describe '#new' do
    it 'takes two parameter and returns a Game object' do
      expect(@game).to be_an_instance_of(Game)
    end
  end

  describe '#multiplayer' do
    it 'returns the correct multiplayer name' do
      expect(@game.multiplayer).to eq 'multiplayer'
    end
  end

  it 'checks if book can be archived' do
    expect(@game.can_be_archived?).to eq false
  end
end
