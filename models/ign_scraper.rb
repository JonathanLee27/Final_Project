require 'nokogiri'
require 'open-uri'

class IgnNokogiri
  attr_accessor :games

  def initialize
    @games = []
    html = open("http://www.ign.com/games/reviews")

    @ign = Nokogiri::HTML(html)
    self.scrapegame
  end
    # scrapegame


  def scrapegame
    @ign.css(".item-title").each do |game|
      @games << game.children.children.children.text.strip
    end
    @games
  end

end


game = IgnNokogiri.new
game.scrapegame

puts game.games

