require_relative './classes/book'

class App
  attr_reader :all_books

  def initialize
    @all_books = []
  end

  def list_books
    puts "\nAll books"

    if @all_books.length.zero?
      puts 'Book list is empty. Choose option (7) to add a book'
    else
      @all_books.each do |book|
        puts "Publication Date: #{book.published_date}, Publisher: #{book.publisher}, State: #{book.cover_state}"
      end
    end
  end

  def add_book
    puts "\nAdd a book"
    print 'Date of publication [yyyy-mm-dd]: '
    published_date = gets.chomp
    print 'Publisher: '
    publisher = gets.chomp
    print "Cover state (Enter 'good' or 'bad'): "
    cover_state = gets.chomp
    new_book = Book.new(published_date, publisher, cover_state)
    @all_books.push(new_book)
    puts 'Book added successfully!'
  end
end
