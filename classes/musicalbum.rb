require './classes/item'

class MusicAlbum < Item
  attr_reader :on_spotify, :published_date

  # attr_accessor :published_date

  def initialize(genre, published_date, on_spotify: true)
    super(published_date)
    @id = rand(1..1000)
    add_genre(genre)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    @item = Item.new
    @item.can_be_archived? && @on_spotify
  end
end
