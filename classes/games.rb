require 'date'
require_relative './Item'


class Game < Item
   
    attr_accessor :multiplayer, :last_played_at

    def initiialize( multiplayer,last_played_at = Date.new())
        @multiplayer = multiplayer
        @last_played_at = last_played_at
        super()
    end

   def can_be_archived? 
    
   end 


end