require 'nokogiri'
require 'open-uri'

html = URI.open("https://flatironschool.com/")

doc = Nokogiri.HTML5(html)
p doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses.each do |course|
  puts course.text.strip
end