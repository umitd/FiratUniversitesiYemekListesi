require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(open("http://uevi.firat.edu.tr/"))

list = page.css("div.views-field-body p")

list.each do |i|

	puts "|" + i.text.center(25) +"|" if i.text != "\u00a0" # Check for &nbsp HTML

	puts "-" * 27 if i.text != "\u00a0"
end 


