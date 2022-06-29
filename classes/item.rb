require 'date'

class Item
  attr_reader :id, :archived, :published_date
  attr_accessor :author, :genre, :label

  def initialize(id, published_date, archived: false)
    @id = id
    @published_date = Date.parse(published_date)
    @archived = archived
  end

  def can_be_archived?
    DateTime.now.year - @published_date.year > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end

  def add_author(author)
    @author = author
    author.items << self unless author.add_item.include?(self)
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def album_to_json
    { published_date: @published_date, on_spotify: @on_spotify }
  end
end
