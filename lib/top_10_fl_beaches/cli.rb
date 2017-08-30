
class TopBeaches::CLI
  def start
    TopBeaches::Scraper.scrape_beaches_info
    call
  end

  def again
    puts ""
    puts "Would you like to look again?"
    puts "yes, for again or exit to leave"
    input = gets.strip
    if input.downcase == "yes"
      call
    elsif input.downcase == "exit"
      exit
    else
      puts "Sorry, that was not understood please try again"
      sleep(1)
      again
    end
  end

  def list_beaches
    TopBeaches::Beach.all.each_with_index do |beach, index|
      puts "#{index+1}. " "#{beach.name}"
    end
  end

  def call
  puts ""
  puts " Hi, Welcome to Top 10 beaches in Florida."
  puts " Here are the top 10 beaches in Florida."
  sleep(2)
  list_beaches
  puts ""
  puts "To learn more about any of these beaches enter its position"
  puts "Or if you want to learn more about every beach at once enter all"

  input = gets.strip
  until input == "exit"
    if input.to_i > 0 && input.to_i < 11
      puts ""
      TopBeaches::Beach.number(input)
      sleep(1)
      again

    elsif input.downcase == "all"
      puts "All of Florida\' lovely beaches"
      TopBeaches::Beach.all.each_with_index do |beach, index|
        puts "#{index+1}. "" #{beach.name}"
        puts "#{beach.description}"
        puts ""
      end
      sleep(1)
      again
    elsif input.downcase == "exit"
      exit
      exit
    else
      puts ""
      puts "Sorry that was not understood try again."
      puts ""
      sleep(3)
      call
    end
  end
  end
end
