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

  def self.scrape_wine
    doc = Nokogiri::HTML(open(BASE_URL))
    wine = self.new
    wine.varietal = doc.css('.headline-link').children.text[/^[^\:]*/]
    wine.pairing_rule = doc.css('.caption.margin-24-bottom p').map do |rule|
      rule = rule.text
    end
    wine.recipe_url = doc.css('.caption.margin-24-bottom a').attribute('href').value

    wine
  end


end
