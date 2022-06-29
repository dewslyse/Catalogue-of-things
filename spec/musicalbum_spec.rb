require_relative '../classes/musicalbum'

describe MusicAlbum do
  context 'It should check if music album is on spotify' do
    album = MusicAlbum.new('2020-12-09')

    it 'should create an instance of class MusicAlbum' do
      expect(album).to be_an_instance_of(MusicAlbum)
    end
  end
end
