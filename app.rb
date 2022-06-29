require_relative './classes/book'
require_relative './classes/musicalbum'
require_relative 'store'

class App
  attr_reader :all_books, :all_albums, :published_date

  def initialize
    @all_books = []
    @all_albums = []
    @store = Store.new

    load_albums
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

  def list_albums
    puts "\nAll albums"

    if @all_albums.length.zero?
      puts 'Music Album list is empty. Choose option (8) to add an album'
    else
      puts(@all_albums.map { |album| puts "Published_date: #{album[:published_date]}. On_spotify: #{album[:on_spotify]}" })
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

  def add_album
    puts "\nAdd a music album"
    print 'Date of publication [yyyy-mm-dd]: '
    published_date = gets.chomp
    id = Random.rand(1..1000)
    new_album = MusicAlbum.new(id, published_date).album_to_json
    @all_albums.push(new_album)
    @store.store_albums(@all_albums.to_json)
    puts 'Music Album added successfully!'
  end

  def load_albums
    file = File.open('./Data/albums_data.json')
    file_data = file.read
    if file_data == ''
      @all_albums = []
    else
      convert_to_array = JSON.parse(file_data, symbolize_names: true)
      @all_albums = convert_to_array
    end
  end
end
