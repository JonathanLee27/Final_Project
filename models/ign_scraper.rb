require 'nokogiri'
require 'open-uri'

class IgnNokogiri
  attr_accessor :games, :ratings

  def initialize
    @games = []
    @ratings =[]
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

  def scrape_rating
    @ign.css(".scoreBox").each do |game|
      @ratings << game.children.children.children.text
    end
       
  end
    


end


game = IgnNokogiri.new
game.scrapegame
game.scrape_rating

puts game.games
puts game.ratings

