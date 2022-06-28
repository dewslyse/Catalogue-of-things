class Genre
  attr_accessor :name, :items
  attr_reader :id

  def initialize(id, name)
    @id = id
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
  end
end
