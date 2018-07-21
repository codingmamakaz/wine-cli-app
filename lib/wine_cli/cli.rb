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
    WineCli::Scraper.scrape_wines
  end

  def menu
    puts ""
    input = nil
    while input != "exit"
      puts "Please select a wine varietal and enter a number to view more information or type list to see the list again or type exit:"

      input = gets.strip

      case input
      when "1"
        puts "More info on 1"  #<- I think I want it to say "More info on 1. Pinot Noir"
      when "2"
        puts "More info on 2"
      when "3"
        puts "More info on 3"
      when "4"
        puts "More info on 4"
      when "5"
        puts "More info on 5"
      when "6"
        puts "More info on 6"
      when "7"
        puts "More info on 7"
      when "8"
        puts "More info on 8"
      when "9"
        puts "More info on 9"
      when "10"
        puts "More info on 10"
      when "11"
        puts "More info on 11"
      when "12"
        puts "More info on 12"
      when "13"
        puts "More info on 13"
      when "14"
        puts "More info on 14"
      when "15"
        puts "More info on 15"
      when "list"
        list
      else
        puts "please enter a number, list or exit"
      end
    end
  end

  def goodbye
    puts "Cheers and goodbye!"
  end


end
