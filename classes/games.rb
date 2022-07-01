require_relative 'item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :published_date
  attr_reader :last_played_at

  def initialize(author,published_date, multiplayer)
    super(published_date)
    add_author(author)
    @multiplayer = multiplayer
    @last_played_at = DateTime.now.year
  end

  def can_be_archived?
    @current_year = DateTime.now.year - @last_played_at
    super && @current_year > 2
  end

  def game_to_json
    {  author: @author, published_date: @published_date, multiplayer: @multiplayer }
  end
end
