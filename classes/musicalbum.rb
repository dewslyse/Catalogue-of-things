require './classes/item'

class MusicAlbum
  attr_reader :on_spotify

  def initialize(on_spotify: true)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    @item = Item.new
    @item.can_be_archived? && @on_spotify
  end
end
