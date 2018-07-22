class WineCli::Wine

  attr_accessor :varietal, :pairing_rule, :recipe_url

  BASE_URL = "https://www.foodandwine.com/slideshows/15-rules-great-wine-and-food-pairings#10"

  @@all = []

  def initialize(varietal = nil)
    @varietal = varietal
    @@all << self
  end

  def self.all
    @@all
  end

  def self.scrape_all_wines
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.headline-link').children.each.with_index(1).each do |varietal, i|
      varietal = varietal.text[/^[^\:]*/]
      puts "#{i}. #{varietal}"
      # WineCli::Wine.new(varietal)
    end
  end

  def self.scrape_varietal(input)
    doc = Nokogiri::HTML(open(BASE_URL))
    doc.css('.headline-link').children[input.to_i - 1].text
  end

  def self.scrape_wine(input)
    doc = Nokogiri::HTML(open(BASE_URL))

    wine = self.new

    # wine.varietal = doc.css('.headline-link').children.text[/^[^\:]*/]
    wine.varietal = doc.css('.headline-link').children[input.to_i - 1].text[/^[^\:]*/]

# binding.pry
    wine.pairing_rule = doc.css('.caption.margin-24-bottom p')

    wine.recipe_url = doc.css('.caption.margin-24-bottom a').attribute('href').value

    @@all << wine
binding.pry
  end


end
