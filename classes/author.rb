require 'date'
require_relative './Item'

class Author < Item
  attr_reader :id, :items
  attr_accessor :first_name, :last_name

  def initialize(_id, _firstname = 'Unknown', last_name = 'Unknown')
    @first_name = first_name
    @last_name = last_name
    @id = Random.rand(1..100)
    @items = []
  end

  def add_item(item)
    @items.push(item)
    item.author = self
  end
end
