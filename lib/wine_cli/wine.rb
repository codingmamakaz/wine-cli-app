class WineCli::Wine

  attr_accessor :varietal, :pairing_rule, :recipe_url

  BASE_URL = "https://www.foodandwine.com/slideshows/15-rules-great-wine-and-food-pairings#10"

  @@all = []

  def initialize(varietal, recipe_url)
    @varietal = varietal
    @pairing_rule = pairing_rule
    @recipe_url = recipe_url
    @@all << self
  end

  def self.all
    @@all
  end

end
