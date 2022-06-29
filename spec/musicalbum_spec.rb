require_relative '../classes/musicalbum'

describe MusicAlbum do
  context 'It should check if music album is on spotify' do
    id = 5
    genre = 'Amasungura'
    published_date = '2020-12-09'
    album = MusicAlbum.new(id, genre, published_date)

    it 'should create an instance of class MusicAlbum' do
      expect(album).to be_an_instance_of(MusicAlbum)
    end
  end
end
