require 'unirest'
# These code snippets use an open-source library.
response = Unirest.post "https://byroredux-metacritic.p.mashape.com/find/game",
  headers:{
    "X-Mashape-Key" => "G5a25A20VamshY0RYrKlSWzvRzwBp1pgPcZjsn6Z7XOMt2i6UB",
    "Content-Type" => "application/x-www-form-urlencoded",
    "Accept" => "application/json"
  },
  parameters:{
    "platform" => 2,
    "retry" => 4,
    "title" => "halo 3"
  }

  
  puts JSON.parse(response.raw_body)["result"]




  {
  platforms: {
    "1" => "PlayStation 3",
    "2" => "Xbox 360",
    "3" => "PC",
    "4" => "DS",
    "6" => "PlayStation 2",
    "7" => "PSP",
    "8" => "Wii",
    "9" => "iPhone/iPad",
    "10" => "PlayStation",
    "11" => "Game Boy Advance",
    "12" => "Xbox",
    "13" => "GameCube",
    "14" => "Nintendo 64",
    "15" => "Dreamcast",
    "16" => "3DS",
    "67365" => "PlayStation Vita",
    "68410" => "Wii U"
  },
  genres: {
    "action" => "Action",
    "adventure" => "Adventure",
    "fighting" => "Fighting Games",
    "first-person" => "First-Person Shooters",
    "flight" => "Flight/Flying",
    "party" => "Party",
    "platformer" => "Platformer",
    "puzzle" => "Puzzle"}