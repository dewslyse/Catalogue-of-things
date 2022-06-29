require_relative '../classes/author'
require_relative '../classes/item'

describe Author do
  before :each do
    @author = Author.new('Amina', 'Buhari')
    @item = Item.new('2001-02-03')
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

  it 'checks if author has an instance of item' do
    @author.add_item(@item)
    expect (@author.items).should include @item
  end
end
