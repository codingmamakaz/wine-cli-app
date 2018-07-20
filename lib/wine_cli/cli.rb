class WineCli::CLI

  def call
    start
  end

  def list
    puts ""
    puts "Here are the list of wines to pair with food."
    WineCli::Scraper.scrape_wines
  end


  def start
    puts "Welcome to Wine Pairing App!"
    puts ""
    puts ""
  end

end
