require 'json'

class Store
  def store_albums(obj)
    File.write('./Data/albums_data.json', obj)
  end
end