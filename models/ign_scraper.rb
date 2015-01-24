require 'nokokgiri'
require 'open-uri'

ign_html = open('http://www.ign.com/games/reviews')

ign = Nokogiri::HTML(ign_html)

puts ign.css ('.item-title')