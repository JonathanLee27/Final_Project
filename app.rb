require 'bundler'
Bundler.require

require_relative 'models/ign_scraper.rb'
class MyApp < Sinatra::Base


  get '/' do 
      Game.create_games
      @games = Game.all
      erb :index
    end
  
    


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
















end