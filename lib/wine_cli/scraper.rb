class WineCli::Scraper

  BASE_URL = "https://www.foodandwine.com/slideshows/15-rules-great-wine-and-food-pairings#10"

  def self.scrape_wines
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.media-body.clearfix').each do |wine|

      varietal = wine.css('.headline-link').children.text[/^[^\:]*/]
      recipe_url = wine.css('.caption.margin-24-bottom a').attribute('href').value

      WineCli::Wine.new(varietal, recipe_url)
    end
  end

  def self.scrape_and_print_pairing_rule(input)
    doc = Nokogiri::HTML(open(BASE_URL))
    if input.to_i <= 5
      doc.css('.caption.margin-24-bottom p')[input.to_i - 1].text
    else
      doc.css('.caption.margin-24-bottom p')[input.to_i].text
    end
  end

end
