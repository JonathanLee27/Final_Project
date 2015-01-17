require 'unirest'
# These code snippets use an open-source library.
response = Unirest.post "https://byroredux-metacritic.p.mashape.com/find/game",
  headers:{
    "X-Mashape-Key" => "G5a25A20VamshY0RYrKlSWzvRzwBp1pgPcZjsn6Z7XOMt2i6UB",
    "Content-Type" => "application/x-www-form-urlencoded",
    "Accept" => "application/json"
  },
  parameters:{
    "platform" => 1,
    "retry" => 4,
    "title" => "Fallout 3"
  }

  
  puts JSON.parse(response.raw_body)[]