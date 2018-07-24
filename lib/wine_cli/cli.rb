class WineCli::CLI

  def start
    puts ""
    puts "Welcome to The Wine Pairing App!"
    puts ""
    WineCli::Scraper.scrape_wines
    list
    menu
  end

  def list
    puts""
    puts "Here is the list of wines to pair with food."
    puts ""
    @wines = WineCli::Wine.all
    @wines.each.with_index(1) do |wine, i|
      varietal = wine.varietal
      puts "#{i}. #{varietal}"
    end
  end

  def menu
    puts ""
    input = nil

    while input != "exit"
      puts ""
      puts "Please select a wine varietal, enter a number to view more information, or type list to see the list again or type exit:"
      puts ""
      input = gets.strip

        if input.to_i > 0
          the_wine = @wines[input.to_i-1]
          puts ""
          puts "#{input}. #{the_wine.varietal}"
          puts ""
          puts "- #{WineCli::Scraper.scrape_and_print_pairing_rule(input)}"
          puts ""
          puts "Check out a recipe to pair with the wine at #{the_wine.recipe_url}"
        elsif input == "list"
          list
        elsif input == "exit"
          goodbye
        else
          puts "please enter a number between 1 to 15, list or exit"
        end
    end
  end

  def goodbye
    puts ""
    puts "Thank you for visiting! Cheers and goodbye!"
    puts ""
  end

end
