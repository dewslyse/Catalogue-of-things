require_relative 'item'

class Book < Item
  attr_reader :publisher, :cover_state
  attr_accessor :published_date

  def initialize(published_date, publisher, cover_state)
    super(published_date)
    @id = rand(1..1000)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end

book1 = Book.new('2018-03-14', 'Cambridge', 'bad')
puts book1
puts book1.id
puts book1.published_date
puts book1.publisher
puts book1.cover_state
print book1.can_be_archived?
