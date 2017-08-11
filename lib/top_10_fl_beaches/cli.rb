
class TopBeaches::CLI
  def start
    TopBeaches::Scraper.scrape_beaches_info
    call
  end

  def again
    puts "Would you like to look again?"
    puts "yes, for again"
    input = gets.strip
    if input.downcase == "yes"
      call
    else
      exit
    end
  end

  def call
  puts "Hi, Welcome to Top 10 beahes in Florida"
  puts "What would you like to see?"
  puts "All? In case you like choices type All"
  puts "The best type 1"
  puts "The lowest rated but still good quality 10?"
  puts "Or if your done exit will leave."

  input = gets.strip
  until input == "exit"
    if input == "1"
      puts "The top Beach"
      TopBeaches::Scraper.spot(0)
      sleep(1)
      again
    elsif input == "10"
      puts "The lowest rated beach"
      TopBeaches::Scraper.spot(9)
      sleep(1)
      again
    elsif input.downcase == "all"
      puts "All of Florida\' lovely beaches"
      TopBeaches::Scraper.all
      sleep(1)
      again
    elsif input.downcase == "exit"
      exit
      exit
    else
      puts "Sorry that was not understood try again."
      call
    end
  end
  end
end
