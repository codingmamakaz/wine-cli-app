class WineCli::Scraper


  BASE_URL = "https://www.foodandwine.com/slideshows/15-rules-great-wine-and-food-pairings#10"

  def self.scrape_wines
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.headline-link').children.each.with_index(1).each do |varietal, i|
      varietal = varietal.text[/^[^\:]*/]
      puts "#{i}. #{varietal}"  #<- 1. Pinot Noir There are 15 varietal
      WineCli::Wine.new(varietal)
    end
  end


end
