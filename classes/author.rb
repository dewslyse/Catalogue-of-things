require 'date'
require_relative './Item'

class Author < Item
  attr_reader :id, :items
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    super(published_date)
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
