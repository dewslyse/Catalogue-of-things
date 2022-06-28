require './classes/item'

class MusicAlbum
  def initialize(on_spotify: true)
    @on_spotify = on_spotify
    @item = Item.new
  end

  def can_be_archived?
    @item.can_be_archived? && @on_spotify
    
  end
end