class WineCli::Wine

  attr_accessor :varietal, :pairing_rule, :recipe_url

  BASE_URL = "https://www.foodandwine.com/slideshows/15-rules-great-wine-and-food-pairings#10"

  @@all = []

  def initialize(varietal = nil, pairing_rule = nil, recipe_url = nil)
    @varietal = varietal
    @pairing_rule = pairing_rule
    @recipe_url = recipe_url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.scrape_list_of_wines
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.headline-link').children.each.with_index(1) do |varietal, i|
      self.new(varietal)
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
    if input.to_i <= 5
      doc.css('.caption.margin-24-bottom p')[input.to_i - 1].text
    else
      doc.css('.caption.margin-24-bottom p')[input.to_i].text
    end
  end

  def self.scrape_and_print_recipe_url(input)
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.caption.margin-24-bottom a')[input.to_i - 1].attribute('href').value
  end

  # def self.scrape_wine_details
  #   doc = Nokogiri::HTML(open(url))
  #
  #   pairing_rule = doc.css('.caption.margin-24-bottom p').text
  #   recipe_url = doc.css('.caption.margin-24-bottom a').attribute('href').value
  # end

end
