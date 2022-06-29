require 'date'

class Item
  attr_reader :id, :archived
  attr_accessor :genre, :label, :published_date, :author

  def initialize(published_date, archived: false)
    @id = id
    @published_date = Date.parse(published_date)
    @archived = archived
  end

  def can_be_archived?
    DateTime.now.year - @published_date > 10
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
