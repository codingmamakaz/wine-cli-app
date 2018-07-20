class Scraper

  def self.scrape_wines
    doc = Nokogiri::HTML(open("https://www.sunset.com/food-wine/wine-pairings/wine-pairing-guide"))
    binding.pry
  end

end
