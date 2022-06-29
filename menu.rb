require_relative 'app'

def app_options
  puts "\nPlease choose an option to continue: "
  puts '1 - List all books'
  puts '2 - List all music albums'
  puts '3 - List of games'
  puts '4 - List all genres'
  puts '5 - List all labels'
  puts '6 - List all authors'
  puts '7 - Add a book'
  puts '8 - Add a music album'
  puts '9 - Add a game'
  puts '10 - Exit'
  puts
end

def menu # rubocop:disable Metrics/CyclomaticComplexity
  app = App.new

  loop do
    app_options
    option = gets.chomp.to_i

    case option
    when 1 then app.list_books
    when 2 then app.list_albums
    when 3 then app.list_games
    when 4 then app.list_genres
    when 5 then app.list_labels
    when 6 then app.list_authors
    when 7 then app.add_book
    when 8 then app.add_album
    when 9 then app.add_game
    when 10
      abort("Have a nice day \n\n")
    else
      puts 'Invalid selection'
    end
  end
end
