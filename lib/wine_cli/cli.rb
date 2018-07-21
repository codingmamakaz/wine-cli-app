class WineCli::CLI

  def start
    puts "Welcome to Wine Pairing App!"
    puts ""
    WineCli::Scraper.scrape_details #<- this is here only for test purposes
  end

  def list
    puts ""
    puts "Here are the list of wines to pair with food."
    puts ""
    WineCli::Scraper.scrape_wines
  end

  def menu
    puts "Please select a wine varietal to view more information:"
    puts ""


    input = gets.strip
    input = input.to_i - 1
# binding.pry

  end




end
