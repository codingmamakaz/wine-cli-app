class WineCli::Wine

  attr_accessor :varietal, :pairing_rule, :recipe_url

  BASE_URL = "https://www.foodandwine.com/slideshows/15-rules-great-wine-and-food-pairings#10"

  # def self.scrape_all_wines
  #   wines = []
  #
  #   wines << self.scrape_wine
  #
  #   wines
  # end


  def self.scrape_list_of_wines
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.headline-link').children.each.with_index(1) do |varietal, i|
      varietal = varietal.text[/^[^\:]*/]
      puts "#{i}. #{varietal}"
    end
  end

  def self.scrape_and_print_varietal(input)
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.headline-link').children[input.to_i - 1].text
  end

  def self.scrape_and_print_pairing_rule(input)
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.caption.margin-24-bottom p')[input.to_i - 1].text
  end

  def self.scrape_and_print_recipe_url(input)
    doc = Nokogiri::HTML(open(BASE_URL))
    binding.pry
    doc.css('.caption.margin-24-bottom a')[input.to_i - 1].attribute('href').value
  end

  # def self.scrape_wine
  #   doc = Nokogiri::HTML(open(BASE_URL))
  #
  #   wine = self.new
  #
  #   wine.varietal = doc.css('.headline-link').children.text[/^[^\:]*/]
  #
  #   wine.pairing_rule = doc.css('.caption.margin-24-bottom p').text
  #
  #   wine.recipe_url = doc.css('.caption.margin-24-bottom a').attribute('href').value
  #
  #   wine
  # end


end
