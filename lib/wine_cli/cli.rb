class WineCli::CLI

  def start
    puts "Welcome to Wine Pairing App!"
    puts ""
  end

  def list
    puts ""
    puts "Here are the list of wines to pair with food."
    puts ""
    puts "Please select a wine varietal to view more information:"
    puts ""
    WineCli::Scraper.scrape_wines

    input = gets.strip
    input = input.to_i - 1
# binding.pry
    

  end




end
