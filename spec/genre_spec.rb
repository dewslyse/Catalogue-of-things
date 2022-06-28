require_relative '../classes/genre'

describe Genre do
  context 'It should create a genre' do
    id = 4
    name = 'Sungura'
    genre = Genre.new(id, name)

    it 'should create an instance of class book' do
      expect(genre).to be_an_instance_of(Genre)
    end

    it 'should check id and name of genre' do
      expect(genre.id).to eq(id)
      expect(genre.name).to eq(name)
    end
  end
end
