class Genre
  attr_accessor :name
  attr_reader :items, :id

  def initialize(id, name)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
  end
end
