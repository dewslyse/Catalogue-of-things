require './classes/item'

class MusicAlbum
  attr_reader :on_spotify

  def initialize(on_spotify)
    @on_spotify = on_spotify
    @item = Item.new
  end

  def can_be_archived?
    @item.can_be_archived? && @on_spotify
  end
end
