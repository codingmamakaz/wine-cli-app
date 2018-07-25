class WineCli::Wine

  attr_accessor :varietal, :dish_name, :recipe_url, :pairing_rule

  @@all = []

  def initialize(varietal, recipe_url, dish_name)
    @varietal = varietal
    @recipe_url = recipe_url
    @dish_name = dish_name
    @@all << self
  end

  def self.all
    @@all
  end

end
