require 'nokogiri'
require 'open-uri'


class ScrapeGames
  attr_accessor :games, :ratings

  def initialize
    html = open("http://www.ign.com/games/reviews")
    @ign = Nokogiri::HTML(html)
  end

  def scrape_data
      all_games ={}
      @ign.css(".itemList-item").each do |game|
          title= game.children.children.children.children.children[0].text.strip
          all_games[title]= {
            :console => game.children.children.children.children.children[1].text,
            :rating => game.children.children.children.children.children[6].text,
            :image => game.children.children.children[1].attributes["src"].value
          } 
      end
      all_games
  end

  
end


class Game
  attr_accessor :title, :rating, :console, :image
  ALL = []
  def self.all
    ALL
  end 

  def self.create_games
    instance_of_scraper_class= ScrapeGames.new
    instance_of_scraper_class.scrape_data.each do |title, data_hash|
       game = Game.new
       game.title = title
       game.console = data_hash[:console]
       game.rating = data_hash[:rating]
       game.image = data_hash[:image] 
       ALL << game
    end
  end
end



