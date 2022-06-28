class Label
  attr_accessor :title, :color, :items
  attr_reader :id

  def initialize(id, title, color)
    @id = id
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
  end
end
