require_relative '../classes/author'
require_relative '../classes/item'

describe Author do
  before :each do
    @author = Author.new('Amina','Buhari')
  end
  describe '#new' do
    it 'takes two parameter and returns a Author object' do
      @author.should be_an_instance_of Author
    end
  end

  describe '#author' do
    it 'returns the correct author first name' do
    @author.first_name.should eql 'Amina'
    end
  end

  describe '#author' do
  it 'returns the correct author last name' do
  @author.last_name.should eql 'Buhari'
  end
 end

 it 'should this' do
    published_date = '2022-03-05'
    multiplayer = "Amina"
    cr = Game.new(published_date, multiplayer)
    expect(cr.correct_name).to be name
  end
end
