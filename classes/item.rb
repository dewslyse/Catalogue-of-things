require 'date'

class Item
  attr_reader :id, :archived
  attr_accessor :author, :genre, :label, :published_date

  def initialize(published_date, archived: false)
    @id = id
    @published_date = Date.parse(published_date)
    @current_year = DateTime.now.year
    @archived = archived
  end

  def can_be_archived?
    (@current_year - @published_date.year) > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  def add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end
end

puts Date.parse('2010-03-14')
book1 = Item.new('2018-03-14')
puts book1
# puts book1.id
puts book1.published_date
# puts book1.publisher
# puts book1.cover_state
print book1.can_be_archived?
