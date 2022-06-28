require 'date'
require_relative './Item'

class Author 
    attr_reader :id
    attr_accessor :first_name, :last_name 
   def initialize(id, firstname = "Unknown", last_name = "Unknown") 
    @first_name = first_name
    @last_name = last_name
    @id = id
   end
   def 
end 
