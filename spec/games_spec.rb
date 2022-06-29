require_relative '../classes/games'
require_relative '../classes/item'
describe Game do
  before :each do
    @game = Game.new('2022-03-05','multiplayer')
  end
  describe '#new' do
    it 'takes two parameter and returns a Game object' do
      @game.should be_an_instance_of Game
    end
  end

  describe '#multiplayer' do
    it 'returns the correct multiplayer name' do
    @game.multiplayer.should eql 'multiplayer'
    end
  end

  
end
