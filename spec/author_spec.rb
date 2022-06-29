require_relative '../classes/author'
require_relative '../classes/item'

describe Author do
  before :each do
    @author = Author.new('Amina', 'Buhari')
    @item = Item.new('2001-02-03')
  end
  describe '#new' do
    it 'takes two parameter and returns a Author object' do
      expect(@author).to be_an_instance_of(Author)
    end
  end

  describe '#author' do
    it 'returns the correct author first name' do
      expect(@author.first_name).to eq('Amina')
    end
  end

  describe '#author' do
    it 'returns the correct author last name' do
      expect(@author.last_name).to eq('Buhari')
    end
  end

  it 'checks if author has an instance of item' do
    @author.add_item(@item)
    expect(@author.items).to include @item
  end
end
