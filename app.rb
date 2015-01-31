require 'bundler'
Bundler.require

require_relative 'models/ign_scraper.rb'
class MyApp < Sinatra::Base


  get '/' do 
      Game.create_games
      @games = Game.all
      erb :index
<<<<<<< HEAD
    end
  
=======
  end

>>>>>>> 4284dae29eaeb80889f77177753b0170bd40f57e
    


  get '/pc' do 
    Game.create_games
    @games = Game.all
    @pc_games = []
    @games.each do |game|
      if game.console == "PC" 
        @pc_games << game
      end
    end
    @pc_games
    erb :pc
  end



 get '/ps4' do 
    Game.create_games
    @games = Game.all
    @ps4_games = []
    @games.each do |game|
      if game.console == "PlayStation 4" 
        @ps4_games << game
      end
    end
    @ps4_games
    erb :ps4
  end


 get '/xbox_one' do 
    Game.create_games
    @games = Game.all
    @xboxone_games = []
    @games.each do |game|
      if game.console == "Xbox One" 
        @xboxone_games << game
      end
    end
    @xboxone_games
    erb :xboxone
  end



get '/wiiu' do 
    Game.create_games
    @games = Game.all
    @wiiu_games = []
    @games.each do |game|
      if game.console == "Wii U" 
        @wiiu_games << game
      end
    end
    @wiiu_games
    erb :wiiu
end
 



get '/ps3' do 
    Game.create_games
    @games = Game.all
    @ps3_games = []
    @games.each do |game|
      if game.console == "Playstation 3" 
        @ps3_games << game
      end
    end
    @ps3_games
    erb :ps3
end



get '/iphone' do 
    Game.create_games
    @games = Game.all
    @iphone_games = []
    @games.each do |game|
      if game.console == "iPhone" 
        @iphone_games << game
      end
    end
    @iphone_games
    erb :iphone
end



get '/xbox_360' do 
    Game.create_games
    @games = Game.all
    @xbox360_games = []
    @games.each do |game|
      if game.console == "Xbox 360" 
        @xbox360_games << game
      end
    end
    @xbox360_games
    erb :xbox360
end











end