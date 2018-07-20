class WineCli::Wine
  attr_accessor :varietal, :pairing_rule, :recipe_url

  @@all = []

  def initialize(varietal)
    @varietal = varietal
    @@all << self
  end

  def self.all
    @@all
  end

end
