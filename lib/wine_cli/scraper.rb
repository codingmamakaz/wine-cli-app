# class WineCli::Scraper
#
#   BASE_URL = "https://www.foodandwine.com/slideshows/15-rules-great-wine-and-food-pairings#10"
#
#   def self.scrape_wines
#     doc = Nokogiri::HTML(open(BASE_URL))
#
#     doc.css('.headline-link').children.each do |wine|
#       varietal = wine.text[/^[^\:]*/]
#       WineCli::Wine.new(varietal)
#     end
#   end
#
# end
