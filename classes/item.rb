require 'date'

class Item
  def initialize(id, published_date, archived: false)
    @id = id
    @published_date = Date.parse(published_date)
    @archived = archived
  end

  def can_be_archived?
    DateTime.now.year - @published_date.year > 10
  end
end