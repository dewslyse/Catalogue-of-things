require 'json'

class Store
  def store_albums(obj)
    File.write('./Data/albums_data.json', obj)
  end

  def store_genres(obj)
    File.write('./Data/genres_data.json', obj)
  end

  def store_books(obj)
    File.write('./data/books_data.json', obj)
  end

  def store_labels(obj)
    File.write('./data/labels_data.json', obj)
  end

  def store_games(obj)
    File.write('./data/game_data.json', obj)
  end

  def store_author(obj)
    File.write('./data/author_data.json', obj)
  end
end
