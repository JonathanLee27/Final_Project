
class IGN
  def get(game, number)
    response = Unirest.get "https://videogamesrating.p.mashape.com/get.php?count=" + number + "&game=" + game,
    headers: {
      "X-Mashape-Key" => "YOUR API KEY HERE",
      "Accept" => "application/json"
    }
  end
end
