class WineCli::CLI

  def start
    puts "Welcome to Wine Pairing App!"
    puts ""
  end

  def list
    puts ""
    puts "Here are the list of wines to pair with food."
    puts ""
    WineCli::Scraper.scrape_wines
    puts ""
    puts "Please pick a number and enter:"
  end




end
