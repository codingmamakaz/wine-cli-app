class WineCli::CLI

  def start
    puts "Welcome to Wine Pairing App!"
    puts ""
    list
    menu
    goodbye
  end

  def list
    puts "Here are the list of wines to pair with food."
    puts ""
    WineCli::Wine.scrape_wines
  end

  def menu
    puts ""
    input = nil
    @wine = WineCli::Wine.scrape_wine
    while input != "exit"
      puts "Please select a wine varietal and enter a number to view more information or type list to see the list again or type exit:"
      puts ""
      input = gets.strip

      case input
      when "1"
        puts ""
        puts "More info on 1: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "2"
        puts ""
        puts "More info on 2: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "3"
        puts ""
        puts "More info on 3: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "4"
        puts ""
        puts "More info on 4: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "5"
        puts ""
        puts "More info on 5: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "6"
        puts ""
        puts "More info on 6: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "7"
        puts ""
        puts "More info on 7: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "8"
        puts ""
        puts "More info on 8: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "9"
        puts ""
        puts "More info on 9: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "10"
        puts ""
        puts "More info on 10: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "11"
        puts ""
        puts "More info on 11: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "12"
        puts ""
        puts "More info on 12: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "13"
        puts ""
        puts "More info on 13: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "14"
        puts ""
        puts "More info on 14: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "15"
        puts ""
        puts "More info on 15: #{WineCli::Wine.scrape_varietal(input)}"
        puts ""
        puts "#{@wine.pairing_rule[input.to_i - 1].text} - check out a recipe to pair with the wine - #{@wine.recipe_url}"
        puts ""
      when "list"
        list
      when "exit"
        puts ""
      else
        puts ""
        puts "please enter a number between 1 to 15, list or exit"
        puts ""
      end
    end
  end

  def goodbye
    puts "Cheers and goodbye!"
    puts ""
  end


end
