require_relative './classes/book'
require_relative './classes/musicalbum'
require_relative 'store'
require_relative './classes/genre'

class App
  attr_reader :all_books, :all_albums, :published_date, :all_genres, :genre

  def initialize
    @all_books = []
    @all_albums = []
    @all_genres = []
    @store = Store.new

    load_albums
    load_genres
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
      puts(@all_albums.map do |album|
             puts "Genre: #{album[:genre]} Published_date: #{album[:published_date]} On_spotify: #{album[:on_spotify]}"
           end)
    end
  end

  def list_genres
    puts "\nAll genres"

    if @all_genres.length.zero?
      puts 'Music Album list is empty. Choose option (8) to add an album'
    else
      puts(@all_genres.map do |genre|
             puts "Genre: #{genre[:name]}"
           end)
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
    print 'Genre: '
    genre = gets.chomp
    print 'Date of publication [yyyy-mm-dd]: '
    published_date = gets.chomp
    id = Random.rand(1..1000)
    new_album = MusicAlbum.new(genre, published_date).album_to_json
    new_genre = Genre.new(id, genre).genre_to_json
    @all_albums.push(new_album)
    @all_genres.push(new_genre)
    @store.store_albums(@all_albums.to_json)
    @store.store_genres(@all_genres.to_json)
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

  def load_genres
    file = File.open('./Data/genres_data.json')
    file_data = file.read
    if file_data == ''
      @all_genres = []
    else
      convert_to_array = JSON.parse(file_data, symbolize_names: true)
      @all_genres = convert_to_array
    end
  end
end
