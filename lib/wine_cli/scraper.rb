class WineCli::Scraper

  BASE_URL = "https://www.foodandwine.com/slideshows/15-rules-great-wine-and-food-pairings#10"

  def self.scrape_wines
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.media-body.clearfix').each do |wine|

      varietal = wine.css('.headline-link').children.text[/^[^\:]*/]
      recipe_url = wine.css('.caption.margin-24-bottom a').attribute('href').value

      doc2 = Nokogiri::HTML(open(recipe_url))
      dish_name = doc2.css('.headline.heading-content.margin-8-top.margin-16-bottom').children.text
      WineCli::Wine.new(varietal, recipe_url, dish_name)
    end
  end

  def self.scrape_and_print_pairing_rule(input)
    doc = Nokogiri::HTML(open(BASE_URL))
    if input.to_i <= 5
      doc.css('.caption.margin-24-bottom p')[input.to_i - 1].text
    else #6th index returns an empty string so I need to skip 6th.
      doc.css('.caption.margin-24-bottom p')[input.to_i].text
    end
  end

end
