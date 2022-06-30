require_relative './classes/book'
require_relative './classes/label'
require_relative './classes/musicalbum'
require_relative 'store'
require_relative './classes/genre'
require_relative './classes/games'
require_relative './classes/author'

class App
  attr_reader :all_books, :all_labels, :all_albums, :published_date, :all_genres, :genre

  def initialize
    @all_books = []
    @all_games = []
    @all_labels = []
    @all_albums = []
    @all_genres = []
    @store = Store.new

    load_albums
    load_genres
    load_books
    load_labels
  end

  def list_books
    puts "\nAll books"

    if @all_books.length.zero?
      puts 'Book list is empty. Choose option (7) to add a book'
    else
      @all_books.map do |book|
        puts "Publication Date: #{book[:published_date]}, Publisher: #{book[:publisher]}, State: #{book[:cover_state]}"
      end
    end
  end

  def list_labels
    puts "\nAll Labels"

    if @all_labels.length.zero?
      puts 'No labels found. Choose option (7) to add a book with label'
    else
      @all_labels.map do |label|
        puts "Title: #{label[:title]}, Color: #{label[:color]}"
      end
    end
  end

  def list_albums
    puts "\nAll albums"

    if @all_albums.length.zero?
      puts 'Music Album list is empty. Choose option (8) to add an album'
    else
      @all_albums.map do |album|
        puts "Genre: #{album[:genre]} Published_date: #{album[:published_date]} On_spotify: #{album[:on_spotify]}"
      end
    end
  end

  def list_genres
    puts "\nAll genres"

    if @all_genres.length.zero?
      puts 'Music Album list is empty. Choose option (8) to add an album'
    else
      @all_genres.map do |genre|
        puts "Genre: #{genre[:name]}"
      end
    end
  end

  def add_book
    puts "\nAdd a book"
    print 'Title: '
    title = gets.chomp
    print 'Color: '
    color = gets.chomp
    print 'Date of publication [yyyy-mm-dd]: '
    published_date = gets.chomp
    print 'Publisher: '
    publisher = gets.chomp
    print "Cover state (Enter 'good' or 'bad'): "
    cover_state = gets.chomp
    new_book = Book.new(title, published_date, publisher, cover_state).book_to_json
    new_label = Label.new(title, color).label_to_json
    @all_books.push(new_book)
    @all_labels.push(new_label)
    @store.store_books(@all_books.to_json)
    @store.store_labels(@all_labels.to_json)
    puts 'Book and Label added successfully!'
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

  def load_books
    file = File.open('./data/books_data.json')
    file_data = file.read
    if file_data == ''
      @all_books = []
    else
      convert_to_array = JSON.parse(file_data, symbolize_names: true)
      @all_books = convert_to_array
    end
  end

  def load_labels
    file = File.open('./data/labels_data.json')
    file_data = file.read
    if file_data == ''
      @all_labels = []
    else
      convert_to_array = JSON.parse(file_data, symbolize_names: true)
      @all_labels = convert_to_array
    end
  end

  def add_game
    puts "\nAdd a game"
    print 'Date of publication [yyyy-mm-dd]: '
    published_date = gets.chomp
    print 'Has parent permission? [Y/N]:'
    multiplayer = gets.chomp
    new_game = Game.new(published_date, multiplayer).game_to_json
    @all_games.push(new_album)
    @store.store_games(@all_games.to_json)
    puts 'Games added successfully!'
  end
end
