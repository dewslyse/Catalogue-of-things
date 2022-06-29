require 'json'

class Store
  def store_albums(obj)
    File.write('./Data/albums_data.json', obj)
  end

  def store_genres(obj)
    File.write('./Data/genres_data.json', obj)
  end
end
