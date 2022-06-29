require 'date'
require_relative './Item'

class Game < Item
  attr_accessor :multiplayer, :published_date
  attr_reader :last_played_at

  def initialize(published_date, multiplayer)
    super(published_date)
    @multiplayer = multiplayer
    @last_played_at = DateTime.now.year
  end

  def can_be_archived?
    @current_year = DateTime.now.year - @last_played_at
    super && @current_year > 2
  end
end
