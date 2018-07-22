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

  def self.scrape_varietal(input)
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.headline-link').children[input.to_i - 1].text
  end

  def self.scrape_details
    doc = Nokogiri::HTML(open(BASE_URL))

    pairing_rule = doc.css('.caption.margin-24-bottom p').map do |rule|
      rule = rule.text
    end
    recipe_url = doc.css('.caption.margin-24-bottom a').attribute('href').value

    pairing_rule #<- I'm not sure if I need the return value of this, but I'm leaving it for now.
    recipe_url #<- I'm not sure if I need the return value of this, but I'm leaving it for now.

  end


end
