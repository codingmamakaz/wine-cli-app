class WineCli::CLI

  def start
    puts "Welcome to Wine Pairing App!"
    puts ""
    list
    menu
  end

  def list
    puts "Here are the list of wines to pair with food."
    puts ""
    WineCli::Wine.scrape_list_of_wines
  end

  def menu
    puts ""
    input = nil
    @wines = WineCli::Wine.all

    while input != "exit"
      puts ""
      puts "Please select a wine varietal and enter a number to view more information or type list to see the list again or type exit:"
      puts ""
      input = gets.strip

        if input.to_i > 0
          the_wine = @wines[input.to_i-1]
          puts "More info on #{input}. #{the_wine.varietal}"
          puts ""
          # puts "#{the_wine.pairing_rule}" <- I want to do this, but I can't get it to work.
          puts "#{WineCli::Wine.scrape_and_print_pairing_rule(input)}"
          puts ""
          puts "Check out a recipe to pair with the wine at #{WineCli::Wine.scrape_and_print_recipe_url(input)}"
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
