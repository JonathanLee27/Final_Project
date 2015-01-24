require 'nokogiri'
require 'open-uri'

class IgnNokogiri
  attr_accessor :games, :ign


  def intitialize
    @games = []
    html = open("http://www.ign.com/games/reviews")

    @ign = Nokogiri::HTML(html)
    puts @ign
    # self.scrapegamesss
  end

  def scrapegame
      @ign.css(".item-title").each do |game|
        @games << game.children.children.children.text.strip
      end

  end

end


game = IgnNokogiri.new
puts game.ign
puts game.scrapegame

# # puts games.scrapegame

# puts game.games