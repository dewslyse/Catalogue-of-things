require './classes/item'

class MusicAlbum < Item
  attr_reader :on_spotify

  def initialize(id, published_date, on_spotify: true)
    super(id, published_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    @item = Item.new
    @item.can_be_archived? && @on_spotify
  end
end
