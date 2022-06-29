require_relative './Item'
require_relative './author'
require_relative './games'
require 'date'

# item_one = Item.new('2001-02-03', 'false')
# puts item_one

# author_one = Author.new('Amina', 'Buhari')
# puts author_one
# author_one.add_item(item_one)

# puts author_one.items[0]
# item_one.add_author(author_one)

ps = Game.new('2022-03-05', 'hhsjsj')
puts ps

puts DateTime.now.year
