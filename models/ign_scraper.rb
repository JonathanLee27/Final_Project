require 'nokogiri'
require 'open-uri'
require 'pry'

class IgnNokogiri
  attr_accessor :games, :ratings

  def initialize
    @games = []
    @ratings =[]
    @games_hash = {}
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
       binding.pry
  end
   
  def create_hash
    @games.each_with_index do |title, index|
      @games_hash[title] = @ratings[index]
    end
  end
end


game = IgnNokogiri.new
game.scrapegame
game.scrape_rating
# puts game.games
# puts game.ratings

