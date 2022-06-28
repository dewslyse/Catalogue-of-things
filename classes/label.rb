class Label
  attr_reader :id, :items
  attr_accessor :title, :color

  def initialize(id, title, color)
    super(id)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @item = item
    item.label << self
  end
end
